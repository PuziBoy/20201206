<footer>
<style>
.map-container-5 iframe{
left:0;
top:0;
height:100%;
width:100%;
position:absolute;
}
</style>
<br>
<div class="container" style="background-color:#DCDBDB">
<div class="row">
<div class="col-md-6 mb-4">
  <h4 id="fat"><?php echo $terms['kontakti'] ?></h4>
  <h6><?php echo $terms['question'] ?></h6>
<p><?php echo $terms['answer'] ?></p>
<p><?php echo $terms['tel'] ?> +372 666 6666</p>
<p><?php echo $terms['mail'] ?> info@puzikov.store.ee</p>
<h6><?php echo $terms['ofice'] ?></h6>
<p><?php echo $terms['adres'] ?> Tartu maantee 29, 10128 Tallinn</p>
<p><?php echo $terms['time'] ?> 9:00–18:00</p>
</div>
<div class="col-md-6 mb-4">

    <div class="card">
      <div class="card-body card-body-cascade text-center">

        <div id="map-container-google-9" class="z-depth-1-half map-container-5" style="height: 300px">
          <iframe src="<?php echo $settings['map'] ?>" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>
      </div>
    </div>
  </div>
 </div>
</div>
<br>
</footer>
