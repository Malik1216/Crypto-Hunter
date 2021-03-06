<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo e($settings->site_name); ?> | <?php echo e($settings->site_title); ?></title>



   <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="<?php echo e(asset ('temp/lib/bootstrap/css/bootstrap.min.css')); ?>" rel="stylesheet">

    <!-- Libraries CSS Files -->
        <link href="<?php echo e(asset ('temp/lib/font-awesome/css/font-awesome.min.css')); ?>" rel="stylesheet">
        <link href="<?php echo e(asset ('temp/lib/animate/animate.min.css')); ?>" rel="stylesheet">
        <link href="<?php echo e(asset ('temp/lib/ionicons/css/ionicons.min.css')); ?>" rel="stylesheet">
        <link href="<?php echo e(asset ('temp/lib/owlcarousel/assets/owl.carousel.min.css')); ?>" rel="stylesheet">
        <link href="<?php echo e(asset ('temp/lib/lightbox/css/lightbox.min.css')); ?>" rel="stylesheet">
        <link href="<?php echo e(asset ('temp/lib/jquery/magnific-popup.css')); ?>" rel="stylesheet">


        <link href="<?php echo e(asset('temp/css/frontend_style_'.$settings->site_colour.'.css')); ?>" rel="stylesheet">
        
        <!-- JavaScript Libraries -->
        <script src="<?php echo e(asset('temp/lib/jquery/jquery.min.js')); ?>"></script>
        <script src="<?php echo e(asset('temp/lib/jquery/jquery-migrate.min.js')); ?>"></script>
        <script src="<?php echo e(asset('temp/lib/bootstrap/js/bootstrap.bundle.min.js')); ?>"></script>
        <script src="<?php echo e(asset('temp/lib/easing/easing.min.js')); ?>"></script>
        <script src="<?php echo e(asset('temp/lib/superfish/hoverIntent.js')); ?>"></script>
        <script src="<?php echo e(asset('temp/lib/superfish/superfish.min.js')); ?>"></script>
        <script src="<?php echo e(asset('temp/lib/wow/wow.min.js')); ?>"></script>
        <script src="<?php echo e(asset('temp/lib/waypoints/waypoints.min.js')); ?>"></script>
        <script src="<?php echo e(asset('temp/lib/counterup/counterup.min.js')); ?>"></script>
        <script src="<?php echo e(asset('temp/lib/owlcarousel/owl.carousel.min.js')); ?>"></script>
        <script src="<?php echo e(asset('temp/lib/isotope/isotope.pkgd.min.js')); ?>"></script>
        <script src="<?php echo e(asset('temp/lib/lightbox/js/lightbox.min.js')); ?>"></script>
        <script src="<?php echo e(asset('temp/lib/touchSwipe/jquery.touchSwipe.min.js')); ?>"></script>

        <!-- Template Main Javascript File -->
        <script src="<?php echo e(asset('temp/js/main.js')); ?>"></script>

</head>