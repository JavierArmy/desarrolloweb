<?php
session_start();
$conn = new mysqli("localhost", "root", "", "autenticarsedb");

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $stmt = $conn->prepare("SELECT id, contraseña FROM usuarios WHERE usuario = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $stmt->bind_result($id, $hashed_password);
        $stmt->fetch();

        if (password_verify($password, $hashed_password)) {
            $_SESSION['user_id'] = $id;
            $_SESSION['username'] = $username;
            echo "¡Inicio de sesión exitoso! Bienvenido, " . $username;
        } else {
            echo "Contraseña no válida.";
        }
    } else {
        echo "Ningún usuario encontrado con ese nombre.";
    }

    $stmt->close();
    $conn->close();
}
?>
