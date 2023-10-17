<?php

include_once("conn.php");

$method = $_SERVER ["REQUEST_METHOD"];

// Resgate dos dados, montagem dos pedidos
if ($method === "GET") {

    $bordaQuery = $conn->query("SELECT * FROM borda;");
    $borda = $bordaQuery->fetchAll();

    $massaQuery = $conn->query("SELECT * FROM massa;");
    $massa = $massaQuery->fetchAll();

    $saborQuery = $conn->query("SELECT * FROM sabor;");
    $sabor = $saborQuery->fetchAll();
}

// Criação do pedido
else if ($method === "POST") {

}

?>