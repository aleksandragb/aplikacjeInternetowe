<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>
        <?= $title?>
        
    </h1>
    <?php foreach($dogs as $dog): ?>
        <p>
             <?= $dog->getDogInfo(); ?>
        </p>
    <?php endforeach; ?>

</body>
</html>