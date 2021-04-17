
      <?php
      if(have_rows('recruitment')):
        while(have_rows('recruitment')): the_row();
      ?>

      <div class="recruitment-page__item">
          <div class="recruitment-page__item-title">職種</div>
          <p class="recruitment-page__item-text">
            <?php the_sub_field('recruitment-work'); ?>
          </p>
        </div>
        <div class="recruitment-page__item">
          <div class="recruitment-page__item-title">職業内容</div>
          <p class="recruitment-page__item-text">
            <?php the_sub_field('recruitment-text'); ?>
          </p>
        </div>
        <div class="recruitment-page__item">
          <div class="recruitment-page__item-title">勤務場所</div>
          <p class="recruitment-page__item-text">
            <?php the_sub_field('recruitment-location'); ?>
          </p>
        </div>
        <div class="recruitment-page__item">
          <div class="recruitment-page__item-title">勤務時間</div>
          <p class="recruitment-page__item-text">
            <?php the_sub_field('recruitment-time'); ?>
          </p>
        </div>
        <div class="recruitment-page__item">
          <div class="recruitment-page__item-title">募集資格</div>
          <p class="recruitment-page__item-text">
            <?php the_sub_field('recruitment-condition'); ?>
          </p>
        </div>
        <div class="recruitment-page__item">
          <div class="recruitment-page__item-title">報酬額</div>
          <p class="recruitment-page__item-text">
            <?php the_sub_field('recruitment-saraly'); ?>
          </p>
        </div>
        <div class="recruitment-page__item">
          <div class="recruitment-page__item-title">諸手当等</div>
          <p class="recruitment-page__item-text">
            <?php the_sub_field('recruitment-allowance'); ?>
          </p>
        </div>
        <div class="recruitment-page__item">
          <div class="recruitment-page__item-title">休暇制度</div>
          <p class="recruitment-page__item-text">
            <?php the_sub_field('recruitment-vacation'); ?>
          </p>
        </div>
        <div class="recruitment-page__item">
          <div class="recruitment-page__item-title">応募方法</div>
          <p class="recruitment-page__item-text">
            <?php the_sub_field('recruitment-subscription'); ?>
          </p>
        </div>

        <?php
          endwhile;
        endif;
        ?>
