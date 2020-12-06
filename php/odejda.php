<br>
<div class="container" id="wear" style="background-color:	#DCDBDB">
  <h2><?php echo $terms['odezda'] ?></h2>
<div class="row">
  <?php
    $compServices = mysqli_query($link, "SELECT code, theText, title, photo  FROM services WHERE lead = 2 AND lang = '$pageLang'");
    $compArray = array();
    while ($oneComp = mysqli_fetch_assoc($compServices)) {
  ?>
    <div class="col-lg-4 col-md-6 col-sm-12">
      <div class="card" style="width: 100%; height: 100%">
        <img src="<?php echo $oneComp['photo'] ?>" class="card-img-top" alt="Picture not found">
        <div class="card-body">
          <h5 class="card-text"><?php echo $oneComp['title'] ?></h5>
          <p class="card-text"><?php echo $oneComp['theText'] ?></p>
        </div>
        <button type="button" class="btn btn-outline-primary"><?php echo $terms['podrob'] ?></button>
        <button type="button" class="btn btn-primary"><?php echo $terms['buy'] ?></button>
      </div>
    </div>
  <?php
  }
  ?>
 </div>
</div>
