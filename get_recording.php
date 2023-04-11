<?php
require 'connect.php';

$myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
$txt = "John Doe\n";
fwrite($myfile, $txt);
fwrite($myfile, json_encode($_POST));


$insData = $_POST;

$columns = array_keys($insData);
$values = array_values($insData);
$columns  = implode("`, `", $columns);
$values  = implode("', '", $values);
$sql = "INSERT INTO `vm_custom_recording` (`$columns`) VALUES ('$values')";
$dbConn->query($sql);
$dbConn->close();

?>