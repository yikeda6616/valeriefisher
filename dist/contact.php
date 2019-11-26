<?php 
$title = "Valerie Fisher | Contact";

include('./functions.php'); 
include('./partials/_header.php'); 

if (isset($_GET["success"])) {
  echo("<p class=\"flash bg-success text-white p-3\">Message has been sent.</p>");
}

?>

  <div class="container text-center u-mt-xl contact">
    <h2 class="sectionLabel u-mb-xl">Contact</h2>

    <form method="post" action="insert.php" class="needs-validation" novalidate>
      <div class="form-row">
        <div class="col-md-6 mb-3">
          <label for="validationCustom01">First name</label>
          <input name="strFirstName" type="text" class="form-control" id="validationCustom01" placeholder="Valerie" value="" required>
          <div class="valid-feedback">
            Looks good!
          </div>
          <div class="invalid-feedback">
            Please enter your first name.
          </div>
        </div>
        <div class="col-md-6 mb-3">
          <label for="validationCustom02">Last name</label>
          <input name="strLastName" type="text" class="form-control" id="validationCustom02" placeholder="Fisher" value="" required>
          <div class="valid-feedback">
            Looks good!
          </div>
          <div class="invalid-feedback">
            Please enter your last name.
          </div>
        </div>
      </div>
      <div class="form-row">
        <div class="col-md-12 mb-3">
          <label for="validationCustomEmail">Email</label>
          <div class="input-group u-mb-md">
            <div class="input-group-prepend">
              <span class="input-group-text" id="inputGroupPrepend"><i class="far fa-envelope"></i></span>
            </div>
            <input name="strEmail" type="text" class="form-control" id="validationCustomEmail" placeholder="valeriefisher@example.com" aria-describedby="inputGroupPrepend" required>
            <div class="invalid-feedback">
              Please enter your email.
            </div>
            <div class="valid-feedback">
              looks good!
            </div>
          </div>
        </div>
      </div>
      <div class="form-group">
        <textarea class="col-md-12" name="strMessage" id="message" cols="30" rows="10"></textarea>
      </div>
      <button class="btn u-mt-lg" type="submit">Send Message</button>
    </form>

  </div>

<?php include('./partials/_footer.php'); ?>