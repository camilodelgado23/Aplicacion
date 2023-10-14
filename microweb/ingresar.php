<?php
$user = $_POST["usuario"];
$pass = $_POST["password"];

$servurl = "http://usuarios:3001/usuarios/$user/$pass";
$curl = curl_init($servurl);

curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$response = curl_exec($curl);
curl_close($curl);

if ($response === false) {
    header("Location: index.html");
    exit; // Agrega un exit después de la redirección para asegurarte de que el script se detenga
}

$resp = json_decode($response);

if (count($resp) != 0) {
    session_start();
    $_SESSION["usuario"] = $user;
    if ($user == "admin") {
        header("Location: admin.php");
        exit; // Agrega un exit después de la redirección
    } else {
        header("Location: usuario.php");
        exit; // Agrega un exit después de la redirección
    }
} else {
    header("Location: index.html");
    exit; // Agrega un exit después de la redirección
}
?>