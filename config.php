<?php
    try {
        $dbhost = $dbname = $dbuser = $dbpass ="";

        $dbhost = 'localhost';
        $dbname = 'form_validation';
        $dbuser = 'root';
        $dbpass = 'cseru';

        $db = new PDO("mysql:host={$dbhost};dbname={$dbname}",$dbuser,$dbpass);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    }
    catch(PDOException $e) {
        echo "Connection error: ".$e->getMessage();
    }
?>