<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LPTech | Workshop - FPT Jetking | Demo Vulnerabilities Website</title>
    <?php include 'header.css.tpl'; ?>
</head>

<body>
    <?php include 'header.tpl'; ?>
    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Search Keyword: <?=$keyword?></h2>
                    </div>
                </div>
            </div>
            <?php if($products):?>
            <div class="row featured__filter">
                <?php foreach($products as $p): ?>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="<?=BASE_URL?><?=$p['images']?>">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="<?=BASE_URL?>product.php?id=<?=$p['id']?>"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="<?=BASE_URL?>product.php?id=<?=$p['id']?>"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="<?=BASE_URL?>product.php?id=<?=$p['id']?>"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="<?=BASE_URL?>product.php?id=<?=$p['id']?>"><?=$p['title']?></a></h6>
                                <h5><?=$p['price']?></h5>
                            </div>
                        </div>
                    </div>
                <?php endforeach;?>
            </div>
            <?php else: ?>
                 <p>No products found with the keyword <strong><?=$keyword?></strong></p>
            <?php endif;?>
        </div>
    </section>
    <!-- Featured Section End -->

    <!-- Footer Section Begin -->
    <?php include 'footer.tpl'; ?>
</body>

</html>