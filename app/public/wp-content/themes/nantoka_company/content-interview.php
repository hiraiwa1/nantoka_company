 <?php
 /* 
 * Template Name: interview
 */
 ?>

 
<?php
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
?>