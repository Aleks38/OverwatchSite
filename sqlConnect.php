<?php
    try
    {
    // Souvent on identifie cet objet par la variable $conn ou $db
    $mysqlClient = new PDO(
    'mysql: host=localhost; dbname=xmktwers_alexybdd; charset=utf8', 'xmktwers_alexy', 'FJM~N#8N+rad7!d~a8');
    }
    catch (Exception $e)
    {
    die('Erreur : ' . $e->getMessage());
    }
?>