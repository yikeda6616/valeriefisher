<?php 
$title = "Valerie Fisher | Portrait";
include('./functions.php'); 
include('./partials/_header.php');
include('./partials/_modal.php');

if (isset($_GET["success"])) {
  echo("<p class=\"flash bg-success text-white p-3\">Message Deleted</p>");
}

$sql = "SELECT * FROM contacts ORDER BY id;";
$result = getData($sql);

?>

  <div class="container text-center u-mt-xl">
    <h2 class="sectionLabel">Message List</h2>
    <table class="table table-hover table-sm u-mt-xl">
      <caption>Message List</caption>
      <thead>
        <tr>
          <th scope="col">&#35;</th>
          <th scope="col">Name</th>
          <th scope="col">Email</th>
          <th scope="col">Message</th>
          <th scope="col">Delete</th>
        </tr>
      </thead>

      <tbody>
        <?php while ($row = mysqli_fetch_assoc($result)) : ?>
        <tr>
          <th scope="row"><?= $row["id"] ?></th>
          <td><?= $row["strFirstName"] ?><?= $row["strLastName"] ?></td>
          <td><?= $row["strEmail"] ?></td>
          <td><?= $row["strMessage"] ?></td>
          <td><a href="delete.php?id=<?= $row["id"] ?>" class="btn-outline-danger"><i class="far fa-trash-alt"></i></a></td>
        </tr>
        <?php endwhile; ?>
      </tbody>
    </table>
  </div>

<?php include('./partials/_footer.php'); ?>