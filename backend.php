<?php
class Database{
    function __construct(){
        try{
            $this->connection = new PDO("mysql:host=localhost;dbname=numeric_history", "root", "");
            $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch(PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    }

    function getHistory(){
        $result = $this->connection->prepare("SELECT id, nom_complet, nom_image FROM personnages");
        $result->execute();
        return $result->fetchAll(PDO::FETCH_ASSOC);
    }

    function getDetails($id){
        $result = $this->connection->prepare("SELECT * FROM personnages WHERE id = :id");
        $result->bindParam(':id', $_GET['id']);
        $result->execute();
        return $result->fetchAll(PDO::FETCH_ASSOC);
    }
}

$backend = new Database();

?>