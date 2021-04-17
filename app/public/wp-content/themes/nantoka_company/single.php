<?php get_header(); ?>
<main class="main news-page">
    <div class="top">
      <div class="inner">
        <div class="pankuzu">
          <ul class="pankuzu__list">
            <li class="pankuzu__item"><a href="#">home</a></li>
            <li class="pankuzu__item yajirushi">></li>
            <li class="pankuzu__item">news</li>
          </ul>
        </div>
        <div class="top__news-page">
          <div class="content__bg bg-slide left"></div>
          <img src="<?php echo get_template_directory_uri(); ?>/images/news.jpg" alt="">
          <h2 class="top__title">NEWS</h2>
        </div>
      </div>
    </div>
    <div class="section__page">
      <div class="inner">
        
        <div class="new-page__title"><?php the_title(); ?></div>
        <div class="news-page__day"><?php the_time('Y.m.d'); ?></div>
        <p class="news-page__text">
          <?php the_content(); ?>
        </p>

      </div>
    </div>
    <!-- /.top -->
  </main>
  <!-- /.main -->

<?php get_footer(); ?>