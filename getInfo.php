<?php 
include "connect_db.php";

function getInfo()
{
    global $pdo;
    $result = $pdo->prepare("SELECT * FROM info");
    $result->execute();



    return json_encode($result->fetchAll());
}
$info = getInfo();
echo $info;
file_put_contents ('filmotec/src/bdd/info.json', $info);

function putInfo($name, $note, $critique, $id, $img)
{
    global $pdo;
    $result = $pdo->prepare("INSERT INTO info (critique, note, user, id_film, img)VALUES('$critique', $note, '$name', '$id', '$img')");
    $result->bindValue(":critique", $critique);
    $result->execute();

    return $result;
}

if($_POST['submit']){
    $name = $_POST['name'];
    $note = $_POST['note'];
    $critique = $_POST["critique"];
    $id = $_POST['id'];
    $img = $_POST['img'];
    
    file_put_contents ('filmotec/src/bdd/info.json', $info);
    header("Location:http://localhost:8081/#/critique");
}
?>