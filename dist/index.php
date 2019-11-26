<?php 
$title = "Valerie Fisher";
include('./functions.php'); 
include('./partials/_header.php'); 
?>

  <div class="container-fluid p-0">
    <section class="topview">
      <a href="contact.php" class="topview__logo"></a>
    </section>
  </div>

  
  <section class="mission container u-mt-xl">
    <h2 class="mission__heading u-mb-md">Not just another pretty dress. Your wedding is a personal moment that I am there to capture.</h2>
    <p class="mission__text mx-auto">
      I believe the best results come from telling it like it is. The art happens in recognizing the moments when the setting, subject and mood are in sync and the real story unfolds naturally, without being contrived.
    </p>
  </section>

  <section class="imagePanels container u-mt-xl u-mb-xl text-center">
    <div class="row">
      <div class="col-md-4">
        <a href="wedding.php" class="imagePanel__link">
          <div class="imagePanel imagePanel--1"></div>
          <h3 class="imagePanel__caption imagePanel__caption--1 u-mt-sm u-mb-md">Wedding</h3>
        </a>
      </div>
      <div class="col-md-4">
        <a href="portrait.php" class="imagePanel__link">
          <div class="imagePanel imagePanel--2"></div>
          <h3 class="imagePanel__caption imagePanel__caption--2 u-mt-sm u-mb-md">Portrait</h3>
        </a>
      </div>
      <div class="col-md-4">
        <a href="family.php" class="imagePanel__link">
          <div class="imagePanel imagePanel--3"></div>
          <h3 class="imagePanel__caption imagePanel__caption--3 u-mt-sm u-mb-md">Family</h3>
        </a>
      </div>
    </div>
  </section>

<?php include('./partials/_footer.php'); ?>
