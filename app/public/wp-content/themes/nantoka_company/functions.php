<?php

/* ヘッダー カスタムメニュー */
register_nav_menus(
  array(
    'place_global' => 'グローバル',
    
  ));

/* スタイルシート、スクリプト */
function my_scripts() {
  wp_enqueue_style('reset', get_template_directory_uri(). '/css/vendors/reset.css', array());
  wp_enqueue_style('google_font', get_template_directory_uri(). 'https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400&display=swap', array());
  wp_enqueue_style('flickity', get_template_directory_uri(). '/css/vendors/flickity.css', array());
  wp_enqueue_style('my_style', get_template_directory_uri(). '/css/style.mini.css');
  wp_enqueue_style('news_style', get_template_directory_uri(). '/news-page/style.mini.css');
  wp_enqueue_style('recruitment_style', get_template_directory_uri(). '/recruitment-page/style.mini.css');
  wp_enqueue_style('intoro_style', get_template_directory_uri(). '/intoro-page/style.mini.css');
  wp_enqueue_style('contact_style', get_template_directory_uri(). '/contact-page/style.mini.css');

  wp_enqueue_script('flickity', get_template_directory_uri(). '/js/vendors/flickity.js', array());
  // wp_enqueue_script('pace', get_template_directory_uri(). '/js/vendors/pace.js', array());
  wp_enqueue_script('polyfill', get_template_directory_uri(). '/js/vendors/scroll-polyfill.js', array());
  wp_enqueue_script('scroll', get_template_directory_uri(). '/js/libs/scroll.js', array(), NULL, true);
  wp_enqueue_script('my_script', get_template_directory_uri(). '/js/script.js', array(), '1.0.0', true);
}
add_action('wp_enqueue_scripts', 'my_scripts');

/* 子ページを取得する関数 */
function get_child_pages($number = -1, $specified_id = null) {
  if(isset($specified_id)):
    $parent_id = $specified_id;
  else:
    $parent_id = get_the_ID();
  endif;
  $args = array(
    'posts_per_page' => $number,
    'post_type' => 'page',
    'orderby' => 'menu_order',
    'post_parent' => $parent_id,
  );
  $child_pages = new WP_Query($args);
  return $child_pages;
}

/* 特定の記事を抽出(singleページ) */
function get_specific_posts($post_type, $taxonomy = null, $term = null, $number = -1) {
  // if(! $term):
  //   $terms_obj = get_terms('event');
  //   $term = wp_list_pluck($terms_obj, 'slug');
  // endif;

  $args = array(
    'post_type' => $post_type,
    'tax_query' => array(
      array(
        'taxonomy' => $taxonomy,
        'field' => 'slug',
        'terms' => $term,
      ),
    ),
    'posts_per_page' => $number,
  );
  $specific_posts = new WP_Query($args);
  return $specific_posts;
}

/* テーマのセットアップ */
function my_setup() {
  /* アイキャッチ画像を利用 */
  add_theme_support('post-thumbnails');
}
add_action('after_setup_theme', 'my_setup');

/* メイン画面上にテンプレートごとのタイトルを定義 */
function get_main_title() {
  if(is_singular('post')):
  $category_obj = get_the_category();
  return $category_obj[0]->name;
    elseif(is_page()):
      return get_the_title();
  elseif(is_category() || is_tax()):
    return single_cat_title();
  elseif(is_404()):
    return 'ページが見つかりません';
  elseif(is_singular('daily_contribution')):
    global $post;
    $term_obj = get_the_terms($post->ID, 'event');
    return $term_obj[0]->name;
  endif;
}

/* アイキャッチ画像を利用できるようにする */
add_theme_support('post-thumbnails');


?>
