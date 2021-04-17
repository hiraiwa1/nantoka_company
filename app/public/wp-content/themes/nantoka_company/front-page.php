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
        <!-- /.section__title news 100 -->

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

          <?php
          $intoro_obj = get_page_by_path('intoro');
          $post = $intoro_obj;
          setup_postdata($post);
          $intoro_title = get_the_title();
          ?>

        <div class="section__title">
          <span class="section__title--line line-left"></span>
          <p class="section__title-text"><?php the_title(); ?></p>
          <span class="section__title--line line-right"></span>
        </div>

          <?php wp_reset_postdata();?>
        <!-- /.section__title intoro 200 -->

        <div class="intoro-content">
          <div class="content__bg intoro-content__bg bg-slide left"></div>
          <p class="intoro-content__text pb-m">会社をよりよく人と事業を繋げます</p>
          <div class="intoro-content__box">

          <?php
          $intoro_pages = get_child_pages(-1, $intoro_obj->ID);
          if($intoro_pages-> have_posts()):
            while($intoro_pages->have_posts()):
              $intoro_pages->the_post();
          ?>

            <div class="intoro-content__btn cover-slide">
              <span class="intoro-content__line top"></span>
              <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
              <span class="intoro-content__line bottom"></span>
            </div>

            <?php
                endwhile;
                wp_reset_postdata();
              endif;
            ?>

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
        <!-- /.section__title about 300 -->

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
      <?php
      $recruitment_page = get_page_by_path('recruitment');
      $post = $recruitment_page;
      setup_postdata($post);
      ?>
        <div class="section__title">
          <span class="section__title--line line-left"></span>
          <p class="section__title-text"><?php the_title(); ?></p>
          <span class="section__title--line line-right"></span>
        </div>
        <!-- /.section__title recruitment 400 -->

        <div class="recruitment-content">
          <div class="content__bg recruitment-content__bg bg-slide right"></div>
          <img src="<?php echo get_template_directory_uri(); ?>/images/group.jpg" alt="group_img" class="recruitment-content__img cover-slide">
          <div class="recruitment-content__btn"><a href="<?php echo esc_url(home_url('recruitment')); ?>">
            <?php the_title(); ?>
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
        <!-- /.section__title interview 500 -->

        <div class="main-carousel interview-content">
        <?php $term_obj = get_term_by('slug', 'interview', 'category') ?>
        <?php
          $args = array(
            'post_type' => 'interview',
            'posts_per_page' => 4,
          );
          $my_posts = get_posts($args);

          foreach($my_posts as $post):
            setup_postdata($post);

          if(have_rows('interview')):
            while(have_rows('interview')): the_row();
        ?>

          <div class="carousel-cell interview-content__item cover-slide">
            <div class="interview-content__item--img">
              <?php
              $image_id = get_sub_field('interview-img');
              echo wp_get_attachment_image($image_id['ID'], 'full');
              ?>
            </div>

            <div class="interview-content__item--box">
              <div class="interview-content__item--name"><?php the_sub_field('interview-name'); ?></div>
              <p class="interview-content__item--text">
                <?php the_sub_field('interview-text'); ?>
              </p>
            </div>
          </div>
          <!-- /.interview-content__item -->

        <?php
            endwhile;
          endif;
        endforeach;
        ?>

        </div>
        <!-- /.interview-content -->
      </div>
    </div>
    <!-- /.interview -->
  </main>

<?php get_footer(); ?>