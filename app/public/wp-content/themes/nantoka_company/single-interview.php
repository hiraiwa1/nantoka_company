<?php get_header(); ?>
<main class="main news-page">
    <div class="top">
      <div class="inner">
        <div class="pankuzu">
          <ul class="pankuzu__list">
            <li class="pankuzu__item"><a href="#">home</a></li>
            <li class="pankuzu__item yajirushi">></li>
            <li class="pankuzu__item">先輩インタビュー</li>
          </ul>
        </div>
        <div class="top__interview-page">
          <div class="content__bg bg-slide left"></div>
          <img src="<?php echo get_template_directory_uri(); ?>/images/group.jpg" alt="">
          <h2 class="top__title">先輩インタビュー</h2>
        </div>
      </div>
    </div>
    <div class="section__page">
      <div class="inner">
      
      <?php
      if(have_posts()):
        while(have_posts()): the_post();
        get_template_part('content-interview');
        endwhile;
      endif;
      ?>

      </div>
    </div>
    <!-- /.top -->
  </main>
  <!-- /.main -->

<?php get_footer(); ?>