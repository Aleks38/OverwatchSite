<head><meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="style.css">
  <title>Inscription</title>
</head>
<body>
    <?php
    include 'navbar.php';
    $verif = FALSE; 
    $verifNbr = 0;
    ?>
    <form method="post" class="needs-validation" novalidate>
        <div class="form-row col-8 mx-auto">
            <div class="col-md-4 mb-4">
                <label for="validationTooltip01">Nom</label>
                <input type="text" class="form-control inputChamp" id="validationTooltip01" name="nomU" required>
                <div class="valid-tooltip">
                    OK
                </div>
            </div>
            <?php
            if (isset($_POST['nomU']))
            {
                if (empty($_POST['nomU']))
                {
                    $verif = FALSE;
                }
                else
                {
                    $verif = TRUE;
                    $verifNbr = $verifNbr + 1;
                }
            }
            ?>
            <div class="col-md-4 mb-4">
                <label for="validationTooltit02">Prénom</label>
                <input type="text" class="form-control inputChamp" id="validationTooltip02" name="prenomU" required>
                <div class="valid-tooltip">
                    OK
                </div>
            </div>
            <?php
            if (isset($_POST['prenomU']))
            {
                if (empty($_POST['prenomU']))
                {
                    $verif = FALSE;
                }
                else
                {
                    $verif = TRUE;
                    $verifNbr = $verifNbr + 1;
                }
            }
            ?>
            <div class="col-md-4 mb-4">
                <label for="validationCustomUsername">Nom d'utilisateur</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                    </div>
                    <input type="text" class="form-control inputChamp" id="validationCustomUsername" aria-describedby="inputGroupPrepend" name="nomDU" required>
                    <div class="invalid-tooltip">
                        Choisissez un nom d'utilisateur.
                    </div>
                </div>
            </div>
            <?php
            if (isset($_POST['nomDU']))
            {
                if (empty($_POST['nomDU']))
                {
                    $verif = FALSE;
                }
                else
                {
                    $verif = TRUE;
                    $verifNbr = $verifNbr + 1;
                }
            }
            ?>
            <div class="col-md-4 mb-4">
                <label for="validationTooltip04">Ville</label>
                <input type="text" class="form-control inputChamp" id="validationTooltip04" name="villeU" required>
                <div class="invalid-tooltip">
                    Précisez une Ville.
                </div>
            </div>
            <?php
            if (isset($_POST['villeU']))
            {
                if (empty($_POST['villeU']))
                {
                    $verif = FALSE;
                }
                else
                {
                    $verif = TRUE;
                    $verifNbr = $verifNbr + 1;
                }
            }
            ?>
            <div class="col-md-4 mb-4">
                <label for="validationTooltip05">Code postal</label>
                <input type="text" class="form-control inputChamp" id="validationTooltip05" name="CPostal" required>
                <div class="invalid-tooltip">
                    Précisez un code postal.
                </div>
            </div>
            <?php
            if (isset($_POST['CPostal']))
            {
                if (empty($_POST['CPostal']))
                {
                    $verif = FALSE;
                }
                else
                {
                    $verif = TRUE;
                    $verifNbr = $verifNbr + 1;
                }
            }
            ?>        
            <div class="col-6 mb-4">
                <label for="validationTooltip06">Adresse mail :</label>
                <input type="text" class="form-control inputChamp" id="validationTooltip06" name="emailU" required>
                <div class="invalid-tooltip">
                    Précisez une adresse mail.
                </div>
            </div>
            <?php
            if (isset($_POST['emailU']))
            {
                if (empty($_POST['emailU']))
                {
                    $verif = FALSE;
                }
                else
                {
                    $verif = TRUE;
                    $verifNbr = $verifNbr + 1;
                }
            }
            ?>
            <div class="col-6 mb-4">
                <label for="validationTooltip07">Mot de passe</label>
                <input type="password" class="form-control inputChamp" id="validationTooltip07" name="passU" required>
                <div class="invalid-tooltip">
                    Précisez un mot de passe.
                </div>
            </div>
            <?php
            if (isset($_POST['passU']))
            {
                if (empty($_POST['passU']))
                {
                    $verif = FALSE;
                }
                else
                {
                    $verif = TRUE;
                    $verifNbr = $verifNbr + 1;
                }
            }
            ?>
            <button class="btn btn-outline-warning" type="submit" href="index.php">Soumettre</button>
            <?php
                if($verifNbr == 7){

                    $passHache = password_hash($_POST['passU'], PASSWORD_DEFAULT, ['cost' => 12]);

                    $sqlRequete3 = 'INSERT INTO utilisateur(nomUtilisateur, prenomUtilisateur, nomDUtilisateur, ville, code_postal, adresseMail, pass) 
                    VALUES (:nomU, :prenomU, :nomDU, :villeU, :CPostal, :emailU, :passU)';

                    $recipesStatement3 = $mysqlClient->prepare($sqlRequete3);

                    $recipesStatement3->execute(array(':nomU' => $_POST['nomU'], ':prenomU' => $_POST['prenomU'], ':nomDU' => $_POST['nomDU'], 
                    ':villeU' => $_POST['villeU'], ':CPostal' => $_POST['CPostal'], ':emailU' => $_POST['emailU'], ':passU' => $passHache));
                    ?>
                    <head>
                        <meta http-equiv="Refresh" content="0; url=index.php" />
                    </head>
                    <?php
                } 
            ?>              
        </div>
    </form>
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function() 
        {
            'use strict';
            window.addEventListener('load', function() 
            {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function(form) 
                {
                    form.addEventListener('submit', function(event) 
                    {
                        if (form.checkValidity() === false) 
                        {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>
</body>
<footer>
    <?php
        include 'footer.php'
    ?>
</footer>
