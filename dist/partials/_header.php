
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="icon" type="image/png" sizes="32x32" href="./favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="./favicon-16x16.png">  
  <link href="https://fonts.googleapis.com/css?family=Charm:400,700|Lato:400,700" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/main.min.css?<?= date('l jS \of F Y h:i:s A'); ?>">
  <title><?= $title; ?></title>
</head>
<body>

  <div class="wrapper">

    <header class="header">
      <a href="index.php">
        <h1 class="header__logo">
          Valerie Fisher
        </h1>
      </a>
      
      <nav id="sp-nav">
        <div id="nav-toggle">

          <input type="checkbox">
          <span></span>
          <span></span>
          <span></span>

          <ul id="nav-content" ontouchstart="">
            <li><a href="index.php">Home</a></li>
            <li><a href="about.php">About</a></li>
            <li><a href="wedding.php">Wedding</a></li>
            <li><a href="portrait.php">Portrait</a></li>
            <li><a href="family.php">Family</a></li>
            <li><a href="price.php">Prices</a></li>
            <li><a href="contact.php">Contact</a></li>
          </ul>

        </div>
      </nav><!-- ./#sp-nav -->  

    </header>