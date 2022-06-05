<div>
  <div>
      <a href="index.php"><p class="logoOverwatchLettre"><img class="logoOverwatchLettreTaille" src="images/logo_overwatch_lettre.png"></a>
  </div>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">  
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item ">
          <a class="nav-link btnNavbar" href="index.php">Accueille</a>
        </li>
        <li class="nav-item ">
          <a class="nav-link btnNavbar" href="heros.php">Héros</a>
        </li>
      </ul>
      <form method="post" class="form-inline my-2 my-lg-0 dropleft">
        <div class="dropdown">
          <button class="btn btn-outline-warning my-2 my-sm-0 dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <img class="btnLogo connexion" src="images/logo_connexion.png">
          </button>
          <div class="dropdown-menu">
            <div class="form-group inputConnexion">
                <label for="exampleDropdownFormEmail1">Adresse mail</label>
                <input type="text" class="form-control inputChamp" id="exampleDropdownFormEmail1" placeholder="email@exemple.fr" name="emailConnexion">
            </div>
            <div class="form-group inputConnexion">
                <label for="exampleDropdownFormPassword1">Mot de passe</label>
                <input type="password" class="form-control inputChamp" id="exampleDropdownFormPassword1" placeholder="Mot de passe" name="passUtiConnexion">
            </div>
            <div class="text-center">
                <br>
                <button type="submit" class="btn btn-warning mx-auto">Connexion</button>
            </div>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="inscription.php">Inscription</a>
        </div>
      </form>
    </div>
  </nav> 
  <?php
    include 'sqlConnect.php';
      if (isset($_POST['emailConnexion']))
      {
        $adresseVerif = $_POST['emailConnexion'];
        $sqlRequete1 = "SELECT * FROM utilisateur where adresseMail = '$adresseVerif'";
        $recipesStatement = $mysqlClient->prepare($sqlRequete1);
        $recipesStatement->execute();
        $recipes = $recipesStatement->fetchAll();
        if(count($recipes) > 0){
          foreach ($recipes as $recepe)
          {
            if($_POST['emailConnexion'] == $recepe['adresseMail'] and password_verify($_POST['passUtiConnexion'], $recepe['pass']))
            {
              ?>
              <div class="col-10 mx-auto">
                <h3 class="username">
                    Bonjour <span class="badge badge-warning">@<?php echo $recepe['nomDUtilisateur']?></span>.
                </h3>
              </div>
              <?php
            }
          }
        }
        else{
            ?>
              <div class="col-10 mx-auto">
                <p class="erreurConnexion">Votre identifiant et le mot de passe ne correspondent à aucun compte existant. Veuillez réessayer.</p>
              </div>
            <?php
        }
      } 
  ?>
</div>
