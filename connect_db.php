<?php 
$dbname = 'filmotec';
$pass = '';
$id = 'root';

function connect($dbname, $id, $pass) //connection a la base de donnée recherche_alternance
{
    global $dbError;
    $opt = array(
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ, //ASSOC,
        PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
        PDO::ATTR_EMULATE_PREPARES => false,
    );
    try {
        return new PDO('mysql:host=localhost;dbname='.$dbname.';charset=utf8', $id, $pass, $opt);
    } catch (PDOException $e) {
        $dbError = 'Oups ! Connexion SGBD impossible !';
        if (DEBUG) :
            $dbError .= '<br/>'.$e->getMessage();
        endif;
    }
}

$pdo = connect($dbname, $id, $pass);

?>