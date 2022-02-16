const gulp =require("gulp");

// const src = (done) => {
//   gulp.src([
//     'src/*.html',
    // 'src/js/**',
    // 'src/images/**',
    // 'src/loader.js',
    // 'src/css/vendors/**.css',
    // 'src/news-page/*.html',
    // 'src/recruitment-page/*.html',
    // 'src/intoro-page/*.html',
//   ], {
//     base: 'src'
//   })
//   .pipe(gulp.dest('dist'));
//   done();
// };

const cleanCSS = require('gulp-clean-css');
const rename = require('gulp-rename');
const autoprefixer = require('gulp-autoprefixer');

const minifyCSS = (done) => {
  gulp.src(
    // 'src/styles/style.css',
    // 'src/loader.css',
    // 'src/intoro-page/styles/style.css',
    // 'src/news-page/styles/style.css',
    'src/contact-page/styles/style.css',
    // 'src/recruitment-page/styles/style.css',
    )
      .pipe(autoprefixer({
        cascade: false
      }))
      .pipe(cleanCSS())
      .pipe(rename({
        extname: '.mini.css'
      }))
      .pipe(gulp.dest('dist/contact-page/css'));
      done();
};
exports.minifyCSS = minifyCSS;
gulp.task('default', gulp.series(minifyCSS));
