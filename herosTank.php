<html>  
  <head><meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <title>Héros</title>
  </head>
  <body>
    <?php
      include 'navbar.php'
    ?>
    <div class="col-12 row">
      <div class="btn-group col-2" role="group">
        <button id="btnGroupDrop1" type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Tank
        </button>
        <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
          <a class="dropdown-item" href="heros.php">Tous les rôles</a>
          <a class="dropdown-item" href="herosDegat.php">Dégât</a>
          <a class="dropdown-item" href="herosSoutien.php">Soutien</a>
        </div>
      </div>
      <h1 class="col-8 titreListe text-center">DES HEROS POUR TOUS</h1> 
    </div>
    <div class="card-deck col-9 mx-auto" >
      <?php
        $incrementIdInt = 0;
        $incrementIdString = "card";
        $sqlRequete1 = "SELECT name, path, description, lien, id_role FROM heros WHERE id_role = 2 ORDER BY name";
        $recipesStatement = $mysqlClient->prepare($sqlRequete1);
        $recipesStatement->execute();
        $recipes = $recipesStatement->fetchAll();
        foreach($recipes as $recipe)
        {
            ?>
            <div id="accordion">
              <div class="card border-warning text-center">
                <div id="headingOne">
                  <a href="#<?php print_r($incrementIdString . strval($incrementIdInt)) ?>" data-toggle="collapse">
                    <img class="card-img" src="<?php echo $recipe['path']; ?>" alt="Card image cap">  
                  </a>
                </div>
    
                <div id="<?php print_r($incrementIdString . strval($incrementIdInt)) ?>"class="collapse" >
                  <div class="card-body">
                    <p class="descriptionCarte"><b><?php echo $recipe['description']; ?></b></p>
                  </div>
                  <div class="card-footer text-muted">
                    <a class="lienCarte" href="<?php echo $recipe['lien']; ?>">Plus d'info</a>
                  </div>
                </div>
              </div>
            </div>
            <?php 
              $incrementIdInt = $incrementIdInt + 1;
        }
        ?>
    </div>
  </body>
  <footer>
      <?php
        include 'footer.php'
      ?>
  </footer>
</html>
