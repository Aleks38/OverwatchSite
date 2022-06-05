<html>    
    <head><meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <title>Accueil</title>
    </head>
    <body>
    <?php
        include 'navbar.php';
    ?>
    <div class="col-10 row mx-auto papaJeff">
        <p><img class="winstonImg" src="images/wallpaper_overwatch.jpg" /></p>
        <div class="col-7">
            <h1 class="text-center">Qu'est ce que c'est ?</h1>
            <p class="text-center"><a href="https://playoverwatch.com/fr-fr/" class="badge badge-warning">Overwatch</a> est un jeu d’action en équipe haut en couleur, mettant à l’honneur une vaste sélection de 
                puissants <a href="heros.php" class="badge badge-warning">héros</a>. Parcourez le monde, formez votre équipe et partez à la conquête d’objectifs dans des combats passionnants à 
                6 contre 6.
            </p>
        </div>
    </div>
    <div class="col-10 row mx-auto papaJeff">  
        <div class="col-7 mx-auto">
            <h1 class="text-center">Jeff Kaplan</h1>
            <p><a href="https://fr.wikipedia.org/wiki/Jeff_Kaplan" class="badge badge-warning">Jeffrey Kaplan</a> travaille depuis mai 2002 chez 
                <a href="https://fr.wikipedia.org/wiki/Blizzard_Entertainment" class="badge badge-primary">Blizzard Entertainment</a>, où il commença 
                en tant qu’associé game designer. Il fut ensuite promu Game designer en mai 2004. Il eut ensuite le titre de lead game designer.Il fut 
                remit à son poste de lead game designer en novembre 2008, il y resta pendant 2 ans et 5 mois avant de devenir le directeur exécutif du 
                game design. Il est depuis mars 2013, vice-Président de <a href="https://fr.wikipedia.org/wiki/Blizzard_Entertainment" class="badge badge-primary">Blizzard Entertainment</a>
                et Game Director. De 2014 jusqu'en 2021, il fut le designer en chef d'<a href="https://playoverwatch.com/fr-fr/" class="badge badge-warning">Overwatch</a>. 
                Le 20 avril 2021, il annonce quitter Blizzard après près de 19 ans dans la compagnie. 
            </p>
        </div>     
        <p><img class="col-10 papaJeffImg" src="images/jeff-kaplan.jpg" /></p>
    </div>
    <div class="text-center">
        <h1>Quelques images des scinématiques</h1>
    </div>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <a href="https://www.youtube.com/watch?v=oyE56xeprQA">
                    <img class="d-block w-100" src="images/wallpaper_winston.jpg" alt="Winston slide">
                </a>
            </div>
            <div class="carousel-item">
                <a href="https://www.youtube.com/watch?v=Uh--cnw1CxE">
                    <img class="d-block w-100" src="images/wallpaper_bastion.jpg" alt="Bastion slide">
                </a>
            </div>
            <div class="carousel-item">
                <a href="https://www.youtube.com/watch?v=BcXvkvxA4pw">
                    <img class="d-block w-100" src="images/wallpaper_genji.jpg" alt="Genji slide">
                </a>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Précédent</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Suivant</span>
        </a>
    </div>
    <h1 class="text-center">Il existe trois types de héros :</h1>
    <div class="card-deck col-10 mx-auto cardRoles">
        <div class="card borderCardTank">
            <a href="herosTank.php">
                <img class="card-img-top" src="images/logo_tank.png" alt="Card image cap">
            </a>
            <div class="card-body">
                <h5 class="card-title text-center"><strong>TANK</strong></h5>
                <p class="card-text">Les tanks sont là pour encaisser les dégâts et s’attaquer à des positions stratégiques, 
                    qu’il s’agisse d’ennemis groupés ou de points d’étranglement. Si vous êtes un tank, c’est à vous de mener la charge.</p>
            </div>
        </div>
        <div class="card borderCardDegat">
            <a href="herosDegat.php">
                <img class="card-img-top" src="images/logo_degat.png" alt="Card image cap">
            </a>
            <div class="card-body">
                <h5 class="card-title text-center"><strong>DEGATS</strong></h5>
                <p class="card-text">Les héros infligeant des dégâts traquent, attaquent et éliminent l’ennemi avec les outils, 
                    capacités et styles de jeu variés à leur disposition. Redoutables mais fragiles, ils ont besoin de renfort pour survivre.</p>
            </div>
        </div>
        <div class="card borderCardSoutien">
            <a href="herosSoutien.php">
                <img class="card-img-top" src="images/logo_soutien.png" alt="Card image cap">
            </a>
            <div class="card-body">
                <h5 class="card-title text-center"><strong>SOUTIEN</strong></h5>
                <p class="card-text">Les héros de soutien protègent et renforcent leurs alliés ; ils les soignent et leur procurent des boucliers, 
                    augmentent leurs dégâts et neutralisent les ennemis. Votre rôle de soutien vous rend indispensable à la survie de votre équipe.</p>
            </div>
        </div>
    </div>
    <?php
        include 'footer.php'
    ?>
    </body>
</html>