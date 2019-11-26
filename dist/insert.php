<?php 
include('./functions.php'); 

$sql = "
INSERT INTO
  `contacts` (`id`, `strFirstName`, `strLastName`, `strEmail`, `strMessage`) 
VALUES (NULL, '$_POST[strFirstName]', '$_POST[strLastName]', '$_POST[strEmail]', '$_POST[strMessage]');";

runSQL($sql);