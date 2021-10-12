<?php require_once("backend.php");
$details = $backend->getDetails($_GET['id']);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail sur <?= $details[0]['nom_complet'] ?></title>
    <link rel="stylesheet" href="Files/bootstrap-5.1.1-dist/css/bootstrap.min.css">
    <script src="Files/bootstrap-5.1.1-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="index.css">
    <link rel="" type="" href="media.css">
</head>
<body style="font-size: 1.3em;background-color: #e6e6fa;">

    <header class="position-fixed d-flex justify-content-between align-items-center container-fluid bg-primary text-white">
        <a href="index.php"><img src="Files/images/icon.png" class="icon" alt="" srcset=""></a>
        <h1>Historique <?= $details[0]['nom_complet'] ?></h1>
        <span class="navbar-brand"><img class="odk" src="files/images/Odk_Image.jpeg" alt="ODK image"><b class="org">Orange Digital Kanlanso</b></span>
    </header>

    <div style="padding-top: 130px;" class="jumbotron container-fluid hist col-lg-12 col-md-12 col-sm-12">
        <span href="detail.php?id=<?= $details['id'] ?>">
            <img style="height: 450px; float: left;" class="img-fluid p-2 rounded col-lg-6" src="<?= $details[0]['nom_image'] ?>" alt="<?= $details[0]['nom_complet'] ?>">
            <h1 class="title"><?= $details[0]['nom_complet'] ?></h1>
            <br />
            <p><?= $details[0]['historique'] ?></p>
        </span>
    </div>
</body>
</html>