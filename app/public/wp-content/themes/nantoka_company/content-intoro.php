
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
          <img src="../images/ricllot.jpg" alt="">
          <h2 class="top__title">人材派遣</h2>
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

      </div>
    </div>
  </main>
  <!-- /.main -->
