<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>about us</h3>
    <p> <a href="home.php">home</a> / about </p>
</section>

<section class="about">

    <div class="flex">

        <div class="image">
            <img src="images/logo_shop.jpeg" alt="">
        </div>

        <div class="content">
            <h3>why choose us?</h3>
            <p>Choose our clothing website for a unique blend of style, quality, and affordability that keeps you looking great without breaking the bank. With a curated selection of trendy pieces and seamless shopping, youll find everything you need to elevate your wardrobe effortlessly.</p>
            <a href="shop.php" class="btn">shop now</a>
        </div>

    </div>

    <div class="flex">

        <div class="content">
            <h3>what we provide?</h3>
            <p>We provide a diverse range of stylish, high-quality clothing designed to fit every taste and occasion, from casual wear to formal attire. Our website ensures a smooth shopping experience with user-friendly navigation, secure payments, and fast shipping options for ultimate convenience.</p>
            <a href="contact.php" class="btn">contact us</a>
        </div>

        <div class="image">
            <img src="images/shop_logo2.jpeg" alt="">
        </div>

    </div>

    <div class="flex">

        <div class="image">
            <img src="images/shop_background.jpg" alt="">
        </div>

        <div class="content">
            <h3>who we are?</h3>
            <p>SILHOUTTE ORIGINAL offers a distinctive collection of fashion-forward clothing that combines style, quality, and comfort to suit every personality. Our mission is to help you express yourself confidently with pieces that stand out and make a lasting impression.</p>
            <a href="#reviews" class="btn">clients reviews</a>
        </div>

    </div>

</section>

<section class="reviews" id="reviews">

    <h1 class="title">client's reviews</h1>

    <div class="box-container">

        <div class="box">
            <img src="images/profile.jpeg" alt="">
            <p>Absolutely love shopping at SILHOUTTE ORIGINAL! The clothes are high-quality, and every piece I’ve bought feels unique and well-made. The website is super easy to navigate, and my orders always arrive quickly. I get compliments all the time cant wait to order more!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Razelle Badua</h3>
        </div>

        <div class="box">
            <img src="images/profile.jpeg" alt="">
            <p>Absolutely love shopping at SILHOUTTE ORIGINAL! The clothes are high-quality, and every piece I’ve bought feels unique and well-made. The website is super easy to navigate, and my orders always arrive quickly. I get compliments all the time cant wait to order more!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Kent Dexter</h3>
        </div>

        <div class="box">
            <img src="images/profile.jpeg" alt="">
            <p>Absolutely love shopping at SILHOUTTE ORIGINAL! The clothes are high-quality, and every piece I’ve bought feels unique and well-made. The website is super easy to navigate, and my orders always arrive quickly. I get compliments all the time cant wait to order more!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Jefferson</h3>
        </div>

        <div class="box">
            <img src="images/profile.jpeg" alt="">
            <p>Absolutely love shopping at SILHOUTTE ORIGINAL! The clothes are high-quality, and every piece I’ve bought feels unique and well-made. The website is super easy to navigate, and my orders always arrive quickly. I get compliments all the time cant wait to order more!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Ryan</h3>
        </div>

        <div class="box">
            <img src="images/profile.jpeg" alt="">
            <p>Absolutely love shopping at SILHOUTTE ORIGINAL! The clothes are high-quality, and every piece I’ve bought feels unique and well-made. The website is super easy to navigate, and my orders always arrive quickly. I get compliments all the time cant wait to order more!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Jerome</h3>
        </div>

        <div class="box">
            <img src="images/profile.jpeg" alt="">
            <p>Absolutely love shopping at SILHOUTTE ORIGINAL! The clothes are high-quality, and every piece I’ve bought feels unique and well-made. The website is super easy to navigate, and my orders always arrive quickly. I get compliments all the time cant wait to order more!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Raymart</h3>
        </div>

    </div>

</section>











<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>