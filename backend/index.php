<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");

include 'conexao.php';

$id = rand(1, 999);
$nome = $_POST["nome"];
$email = $_POST["email"];
$comentario = $_POST["comentario"];

// Verifica se os dados estão chegando
file_put_contents('log.txt', "Recebido: Nome=$nome Email=$email Comentario=$comentario\n", FILE_APPEND);

$query = "INSERT INTO mensagens(id, nome, email, comentario) VALUES ('$id', '$nome', '$email', '$comentario')";

if ($link->query($query) === TRUE) {
    echo "New record created successfully";
    file_put_contents('log.txt', "Sucesso ao inserir no banco\n", FILE_APPEND);
} else {
    echo "Error: " . $link->error;
    file_put_contents('log.txt', "Erro ao inserir no banco: ".$link->error."\n", FILE_APPEND);
}
?>
