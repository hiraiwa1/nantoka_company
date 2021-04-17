<?php get_header(); ?>

  <main class="main">
    <div class="top topview">
      <video class="topview__video" src="<?php echo get_template_directory_uri(); ?>/images/compny.mp4" autoplay muted></video>
      <h2 class="topview__text">
        透き通る眼差し
        <span>照り返す輝き</span>
      </h2>
    </div>
    <!-- /.topview -->

    <div class="section news" id="news">
      <div class="inner">
        <div class="section__title">
          <span class="section__title--line line-left"></span>
          <p class="section__title-text">お知らせ</p>
          <span class="section__title--line line-right"></span>
        </div>
        <!-- /.section__title -->

        <div class="news-content">
        <?php $term_obj = get_term_by('slug', 'news', 'category') ?>
          <img class="section__img news-content__img cover-slide" src="<?php echo get_template_directory_uri(); ?>/images/news.jpg" alt="news_img">
          <ul class="news-content__list cover-slide">
          
          <?php
          $news_posts = get_specific_posts('post', 'category', 'news-category', 4);
          if($news_posts -> have_posts()):
            while($news_posts -> have_posts()): $news_posts -> the_post();
          ?>

          <li class="news-content__item">
            <a href="<?php the_permalink(); ?>">
              <div class="news-content__day"><?php the_time('Y.m.d'); ?></div>
              <div class="news-content__text"><?php the_title(); ?></div>
            </a>
          </li>

          <?php
            endwhile;
            wp_reset_postdata();
          endif;
          ?>

          </ul>
        </div>
        <!-- /.news-content -->
      </div>
    </div>
    <!-- /.news -->

    <div class="section intoro section__bgGray" id="intoro">
      <div class="inner">
        <div class="section__title">
          <span class="section__title--line line-left"></span>
          <p class="section__title-text">事業紹介</p>
          <span class="section__title--line line-right"></span>
        </div>
        <!-- /.section__title -->

        <div class="intoro-content">
          <div class="content__bg intoro-content__bg bg-slide left"></div>
          <p class="intoro-content__text pb-m">会社をよりよく人と事業を繋げます</p>
          <div class="intoro-content__box">
            <div class="intoro-content__btn cover-slide">
              <span class="intoro-content__line top"></span>
              <a href="intoro-page/intoro-page.html">人材派遣</a>
              <span class="intoro-content__line bottom"></span>
            </div>
            <div class="intoro-content__btn cover-slide">
              <span class="intoro-content__line top"></span>
              <a href="intoro-page/intoro-page.html">業務委託</a>
              <span class="intoro-content__line bottom"></span>
            </div>
            <div class="intoro-content__btn cover-slide">
              <span class="intoro-content__line top"></span>
              <a href="intoro-page/intoro-page.html">アルバイト</a>
              <span class="intoro-content__line bottom"></span>
            </div>
            <div class="intoro-content__btn cover-slide">
              <span class="intoro-content__line top"></span>
              <a href="intoro-page/intoro-page.html">警備員</a>
              <span class="intoro-content__line bottom"></span>
            </div>
            <div class="intoro-content__btn cover-slide">
              <span class="intoro-content__line top"></span>
              <a href="intoro-page/intoro-page.html">シニア派遣</a>
              <span class="intoro-content__line bottom"></span>
            </div>
            <div class="intoro-content__btn cover-slide">
              <span class="intoro-content__line top"></span>
              <a href="intoro-page/intoro-page.html">ドライバー派遣</a>
              <span class="intoro-content__line bottom"></span>
            </div>
            <div class="intoro-content__btn cover-slide">
              <span class="intoro-content__line top"></span>
              <a href="intoro-page/intoro-page.html">求人広告</a>
              <span class="intoro-content__line bottom"></span>
            </div>
            <div class="intoro-content__btn cover-slide">
              <span class="intoro-content__line top"></span>
              <a href="intoro-page/intoro-page.html">社員研修</a>
              <span class="intoro-content__line bottom"></span>
            </div>
          </div>
        </div>
        <!-- /.intoro-content -->
      </div>
    </div>
    <!-- /.intoro -->

    <div class="section about" id="about">
      <div class="inner">
        <div class="section__title">
          <span class="section__title--line line-left"></span>
          <p class="section__title-text">会社概要</p>
          <span class="section__title--line line-right"></span>
        </div>
        <!-- /.section__title -->

        <div class="about-content">
          <img src="<?php echo get_template_directory_uri(); ?>/images/about.jpg" alt="about_img" class="section__img about-content__img cover-slide">
          <div class="about-content__box cover-slide">
            <p class="about-content__text-b">
              万全の教育体制！！<br>
              エキスパートをお送りします
            </p>
            <p class="about-content__text-m">
              万全の教育体制で派遣社員の皆様をサポートし、人材を必要としている企業様にエキスパートを送り出しています。<br>
              どうぞお気軽にご相談ください。
            </p>
          </div>
        </div>
        <!-- /.about-content -->
      </div>
    </div>
    <!-- /.about -->

    <div class="section recruitment section__bgGray" id="recruitment">
      <div class="inner">
        <div class="section__title">
          <span class="section__title--line line-left"></span>
          <p class="section__title-text">人材募集</p>
          <span class="section__title--line line-right"></span>
        </div>
        <!-- /.section__title -->

        <div class="recruitment-content">
          <div class="content__bg recruitment-content__bg bg-slide right"></div>
          <img src="<?php echo get_template_directory_uri(); ?>/images/group.jpg" alt="group_img" class="recruitment-content__img cover-slide">
          <div class="recruitment-content__btn"><a href="recruitment-page/recruitment-page.html">
            人材募集
          </a></div>
        </div>
        <!-- /.recruitment-content -->
      </div>
    </div>
    <!-- /.recruitment -->

    <div class="section interview" id="interview">
      <div class="inner">
        <div class="section__title interview__title">
          <span class="section__title--line line-left"></span>
          <p class="section__title-text">先輩インタビュー</p>
          <span class="section__title--line line-right"></span>
        </div>
        <!-- /.section__title -->

        <div class="main-carousel interview-content">
          
        </div>
        <!-- /.interview-content -->
      </div>
    </div>
    <!-- /.interview -->
  </main>

<?php get_footer(); ?>