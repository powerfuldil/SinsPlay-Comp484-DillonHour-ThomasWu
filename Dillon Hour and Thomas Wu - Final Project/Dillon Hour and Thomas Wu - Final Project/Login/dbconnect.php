<?php

 // this will avoid mysql_connect() deprecation error.
 error_reporting( ~E_DEPRECATED & ~E_NOTICE );
 // but I strongly suggest you to use PDO or MySQLi.
 
 $DBHOST='localhost';
 $DBUSER='dmh34158';
 $DBPASS= 'Pokemon15!';
 $DBNAME='sinsplaytest';
 
 $conn = new mysqli($DBHOST,$DBUSER,$DBPASS, $DBNAME);
 $dbcon = mysql_select_db(DBNAME);
 
 if ( $conn->connect_error ) {
  die("Connection failed : " . $conn->connect_error);
 }
 

?>
