const gulp =require("gulp");
const sass = require('gulp-sass');
sass.compiler = require('sass');
const cleanCSS = require('gulp-clean-css');
const rename = require('gulp-rename');
const autoprefixer = require('gulp-autoprefixer');

const src = (done) => {
  gulp.src([
    'src/*.html',
    'src/js/**',
    'src/images/**',
    'src/loader.js',
    'src/css/vendors/**.css',
    'src/news-page/*.html',
    'src/recruitment-page/*.html',
    'src/intoro-page/*.html',
  ], {
    base: 'src'
  })
  .pipe(gulp.dest('dist'));
  done();
};
exports.src = src;

const sassCompile = (done) => {
  /* const plugins = [
    autoprefixer({browsers: [
      "last 2 versions",
          "ie >= 11",
          "Android >= 4"
    ]}),
    cssnano()
  ];
  return */ gulp.src('./src/styles/style.scss')
    .pipe(sass({
      outputStyle: 'expanded'
    }).on('error', sass.logError))
    // .pipe(postcss(plugins))
    .pipe(autoprefixer({
      cascade: false
    }))
    .pipe(gulp.dest('./src/styles'));
    done()
};

// exports.default = sassCompile;
exports.sassCompile = sassCompile;

// function watch() {
//   gulp.watch('sass', sassCompile);
// }
// exports.default = watch;


const minifyCSS = (done) => {
  gulp.src(
    './src/styles/style.css',
    // 'src/loader.css',
    // 'src/intoro-page/styles/style.css',
    // 'src/news-page/styles/style.css',
    // 'src/contact-page/styles/style.css',
    // 'src/recruitment-page/styles/style.css',
    )
      .pipe(autoprefixer({
        cascade: false
      }))
      .pipe(cleanCSS())
      .pipe(rename({
        extname: '.mini.css'
      }))
      .pipe(gulp.dest('./dist/css'));
      done();
};
exports.minifyCSS = minifyCSS;

// gulp.task('default', gulp.parallel(
//   () => {
//     gulp.watch(["src/styles/**/**.css"], () => {
//       return minifyCSS();
//     })
//   }
// ))
gulp.task('default', gulp.series(minifyCSS));
