<?php

/* 
Parametry połączenia z bazą danych
źródło: http://www.kess.snug.pl/?sid=10&pid=32
 *  */

function connection() { 
    // serwer bazy danych
    $mysql_server = "localhost"; 
    // użytkownik bazy danych
    $mysql_user = ""; 
    // hasło bazy danych
    $mysql_pass = ""; 
    // nazwa bazy danych
    $mysql_db = ""; 
    // nawiązanie połączenia z serwerem MySQL 
    @mysql_connect($mysql_server, $mysql_user, $mysql_pass) 
    or die('Błąd połączenia z serwerem MySQL.'); 
    // nawiązanie połączenia z bazą danych 
    @mysql_select_db($mysql_db) 
    or die('Błąd wyboru bazy danych.'); 
} 

?>