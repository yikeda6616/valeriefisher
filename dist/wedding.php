<?php 
$title = "Valerie Fisher | Wedding";
include('./functions.php'); 
include('./partials/_header.php');
include('./partials/_modal.php');
$sql = "SELECT * FROM photos WHERE nCategoryId = 1;";
$result = getData($sql);

?>

  <div class="container text-center u-mt-xl">
    <h2 class="sectionLabel u-mb-xl">Wedding</h2>

    <div class="container gallery">
      <div class="row gallery__row">
        <?php while($row = mysqli_fetch_assoc($result)): ?>
        <div class="col-md-4 u-mb-lg">
          <a href="javascript:void(0)" class="openModal" path="<?= $row['strImagePath'] ?>">
            <img src="<?= $row['strImagePath'] ?>" alt="<?= $row['strName'] ?>" class="gallery__img">
            <h3><?= $row['strName'] ?></h3>
          </a>
        </div>
        <?php endwhile; ?>
      </div>
    </div>
  </div>

<?php include('./partials/_footer.php'); ?>