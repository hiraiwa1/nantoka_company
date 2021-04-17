<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo wp_get_document_title(); ?></title>
  <meta name="description" content="<?php bloginfo('description'); ?>">

  <!-- link -->
  <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/loader.mini.css">
  <script src="<?php echo get_template_directory_uri(); ?>/loader.js"></script>

  <?php wp_head(); ?>

</head>
<body>

  <?php if(is_home() || is_front_page()) : ?>

  <div class="load">
    <div class="load__slide"></div>
    <div class="load__text">なんとかカンパニー</div>
  </div>
  <!-- /.load -->

  <?php endif; ?>

  <header class="header">
    <div class="inner">
      <div class="header__logo">
        <img class="header__logo--mark" src="<?php echo get_template_directory_uri(); ?>/images/nanto2.png" alt="company_logo">
        <h1 class="header__logo--text">なんとかカンパニー</h1>
      </div>
      <div class="header__toggle">
        <span></span>
        <span></span>
        <span></span>
      </div>
      <div class="header__menu">
          <?php
          wp_nav_menu(
            array(
              'theme_location' => 'place_global',
              'container' => false,
            ));
          ?>
        <div class="header__menu--access">
          <div class="header__menu--access-map"><a href="#access">アクセス</a></div>
          <div class="header__menu--access-contact"><a href="<?php echo esc_url(home_url('contact')); ?>">お問い合わせ</a></div>
        </div>
      </div>
    </div>
  </header>