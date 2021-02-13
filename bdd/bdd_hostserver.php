<?php        
//Server connexion mocha3034.mochahost.com
$hostname = "mocha3034.mochahost.com";
$database = "delightf_ms_consulting";
$username = "delightf_Stone10";
$password = "delightf_Stone10w028HI;xSFf1k]";
// Configuration des options de connexion
                
// Désactive l'éumlateur de requêtes préparées (hautement recommandé)
$pdo_options[PDO::ATTR_EMULATE_PREPARES] = false;
                
// Active le mode exception
$pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
                
// Indique le charset 
$pdo_options[PDO::MYSQL_ATTR_INIT_COMMAND] = "SET NAMES utf8";
                
// Connexion
try
{
    $connect = new PDO('mysql:host='.$hostname.';dbname='.$database, $username, $password, $pdo_options);
}
catch (PDOException $e)
{
    exit('problème de connexion à la base');
} 
?>