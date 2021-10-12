<?php require_once("backend.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Des grands hommes du monde numérique</title>
    <link rel="stylesheet" href="Files/bootstrap-5.1.1-dist/css/bootstrap.min.css">
    <script src="Files/bootstrap-5.1.1-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="index.css">
    <!-- <link rel="stylesheet" href="media.css"> -->
</head>
<body style="background-color: #e6e6fa;">
    
    <header class="position-fixed d-flex justify-content-between align-items-center container-fluid bg-primary text-white border-bottom border-danger">
        <a href="index.php"><img src="Files/images/icon.png" class="icon" alt="image icon"></a>
        <h1>Des grands hommes du monde numérique</h1>
        <span class="navbar-brand"><img class="odk" src="files/images/Odk_Image.jpeg" alt="ODK image"><b class="org">Orange Digital Kanlanso</b></span>
    </header>

    <div style="padding-top: 150px;" class="row border-2">
        <?php foreach ($backend->getHistory() as $history): ?>
            <div class="person-card text-center col-lg-3 col-md-6 col-sm-12">
                <a href="detail.php?id=<?= $history['id'] ?>">
                    <img style="height: 201px; width: 240px;" class="img-fluid img-responsive rounded rounded-circle" src="<?= $history['nom_image'] ?>" alt="image de <?= $history['nom_complet'] ?>">
                </a>
                <h2 class="text-primary"><strong><?= $history['nom_complet'] ?></strong></h2>
        </div>
        <?php endforeach; ?>
    </div>
</body>
</html>