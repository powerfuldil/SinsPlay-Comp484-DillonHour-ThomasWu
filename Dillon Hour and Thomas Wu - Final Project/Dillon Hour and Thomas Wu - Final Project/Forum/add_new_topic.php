<?php
 
$host="localhost"; // Host name 
$username="dmh34158"; // Mysql username 
$password="Pokemon15!"; // Mysql password 
$db_name="sinsplayforum"; // Database name  
$tbl_name="fquestions"; // Table name 
 
$conn = new mysqli($host, $username, $password, $db_name);

 
 if ( $conn->connect_error ) {
  die("Connection failed : " . $conn->connect_error);
 }
 
// get data that sent from form 
$topic=$_POST['topic'];
$detail=$_POST['detail'];
$name=$_POST['name'];
$email=$_POST['email'];

date_default_timezone_set('America/Los_Angeles');
$datetime = date("m/d/y"); //create date time
 
$sql="INSERT INTO $tbl_name(topic, detail, name, email, datetime)VALUES('$topic', '$detail', '$name', '$email', '$datetime')";
$result=$conn->query($sql);
 
if($result){
echo "Successful<BR>";
echo "<a href=main_forum.php>View your topic</a>";
}
else {
echo "ERROR";
}
$conn->close();
?>