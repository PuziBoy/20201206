<div class="container-fluid">
   <nav class="navbar navbar-expand-lg navbar-light flyMenu" 	style="background-color:#DCDBDB">
<img src="<?php echo $settings['fenek'] ?>" height="250%">
  <a class="navbar-brand" href="#"><?php echo $menu['menuShop'] ?></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent" style="background-color:#DCDBDB">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#main"><?php echo $menu['menuMain'] ?> <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#"><?php echo $menu['menuNews'] ?></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <?php echo $menu['menuCatalog'] ?>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item disabled" href="#"><?php echo $menu['menuNewItems'] ?></a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#comp"><?php echo $menu['menuComp'] ?></a>
          <a class="dropdown-item" href="#wear"><?php echo $menu['menuOdejda'] ?></a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#"><?php echo $menu['menuAkcii'] ?></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#fat"><?php echo $menu['menuKontakt'] ?></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <ul class="navbar-nav ml-auto">
          <?php
          $langTable = mysqli_query($link, "SELECT code FROM languages");
          while($oneLang=mysqli_fetch_assoc($langTable)){
              echo '<li class="nav-item">
              <a class="nav-link" href="?ln='.$oneLang['code'].'">'.$oneLang['code'].'</a>
          </li>';
          }
          ?>
      </ul>
    </form>
  </div>
</nav>
  </div>
