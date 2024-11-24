<?php
session_start();
session_unset();
session_destroy();
echo "Has sido desconectado. <a href='index.html'>Go back</a>";
?>
