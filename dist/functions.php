<?php

function dbConnect() {

  /*/
  $con = mysqli_connect(
    "localhost", //server name
    "root", // user name
    "root", // password
    "valeriefisher" // db name
  );
  /*/
  $con = mysqli_connect(
    "192.185.103.167", //server name
    "yikeda_testtest", // user name
    "testtest", // password
    "yikeda_valeriefisher" // db name
  );
  //*/

  if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
  }

  return $con;

}

function getData($sql) { // Get Data by SQL and USE IT on the page
  $con = dbConnect();
  $result = mysqli_query($con, $sql);
  return $result;
}

function runSQL($sql) { // Run SQL and go back to the page
  $con = dbConnect();

  if (mysqli_query($con, $sql)) {
    header("location: contact.php?success=true");
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
  }
}
function deleteData($sql) { // delete Data and go back to the list page
  $con = dbConnect();

  if (mysqli_query($con, $sql)) {
    header("location: message.php?success=true");
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
  }
}

function showYear() {
  $time = time();
  date_default_timezone_set('America/Vancouver');
  return date('Y', $time);
}

