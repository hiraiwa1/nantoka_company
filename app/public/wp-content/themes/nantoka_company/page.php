<?php get_header(); ?>

  <main class="main intoro-page">
    <div class="top">
      <div class="inner">
        <div class="pankuzu">
          <ul class="pankuzu__list">
            <li class="pankuzu__item"><a href="#">home</a></li>
            <li class="pankuzu__item yajirushi">></li>
            <li class="pankuzu__item">人材派遣</li>
          </ul>
        </div>
        <div class="top__intoro-page">
          <div class="content__bg bg-slide left"></div>
          <?php the_post_thumbnail('intoro'); ?>
          <h2 class="top__title"><?php echo get_main_title(); ?></h2>
        </div>
      </div>
    </div>
    <!-- /.top -->
    
    <div class="section__page">
          <div class="inner">

<?php
if(have_posts()):
  while(have_posts()): the_post();
  the_content();
  endwhile;
endif;
?>

        <!-- <p class="intoro-page__text">
          この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。
        </p> -->
      </div>
    </div>
  </main>
  <!-- /.main -->


  <?php get_footer(); ?>