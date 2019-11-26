<?php
include 'functions.php';

$sql = "
  DELETE FROM `contacts` 
  WHERE `contacts`.`id` = '$_GET[id]';
";

deleteData($sql);