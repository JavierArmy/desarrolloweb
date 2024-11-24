<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = new mysqli("localhost", "root", "", "autenticarsedb");

if ($conn->connect_error) {
    die("La conexión falló: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);

    // Verifica que no haya campos vacíos
    if (empty($username) || empty($password)) {
        die("Se requiere nombre de usuario y contraseña.");
    }

    // Encripta la contraseña
    $hashed_password = password_hash($password, PASSWORD_BCRYPT);

    // Usa una consulta preparada
    $stmt = $conn->prepare("INSERT INTO usuarios (usuario, contraseña) VALUES (?, ?)");
    if (!$stmt) {
        die("Statement preparation failed: " . $conn->error);
    }

    $stmt->bind_param("ss", $username, $hashed_password);

    if ($stmt->execute()) {
        echo "¡Usuario registrado con éxito! <a href='login.html'>Iniciar sesión</a>";
		
    } else {
        // Muestra errores específicos
        if ($conn->errno === 1062) {
            echo "El nombre de usuario ya existe. Por favor elige otro.";
        } else {
            echo "Error: " . $stmt->error;
        }
    }

    $stmt->close();
}
$conn->close();
?>
