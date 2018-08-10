var gulp         = require('gulp');
var sass         = require('gulp-sass');
var uglify       = require('gulp-uglify');
var rename       = require('gulp-rename');
var include      = require('gulp-include');
var mustache     = require('gulp-mustache');
var cleanCSS     = require('gulp-clean-css');
var autoprefixer = require('gulp-autoprefixer');

gulp.task('html', function() {
  return gulp.src('src/mustache/*.mustache')
    .pipe(mustache('src/mustache/data.json',{extension:'.html'},{}))
    .pipe(gulp.dest('build'));
});

gulp.task('css', function() {
  return gulp.src('src/scss/style.scss')
    .pipe(sass({outputStyle:'expanded'}).on('error', sass.logError))
    .pipe(autoprefixer({
      browsers: ['last 2 versions'],
      cascade: false
    }))
    .pipe(gulp.dest('build/css'))
    .pipe(cleanCSS())
    .pipe(rename({suffix:'.min'}))
    .pipe(gulp.dest('build/css'));
});

gulp.task('js', function() {
  return gulp.src('src/js/script.js')
    .pipe(include())
    .pipe(gulp.dest('build/js'))
    .pipe(uglify())
    .pipe(rename({suffix:'.min'}))
    .pipe(gulp.dest('build/js'));
});

gulp.task('copy-module', function() {
  gulp.src('node_modules/bootstrap/dist/**/*.*').pipe(gulp.dest('build/bootstrap'));
  gulp.src(['node_modules/jquery/dist/jquery.js','node_modules/jquery/dist/jquery.min.js']).pipe(gulp.dest('build/js'));
  gulp.src(['node_modules/typeahead.js/dist/typeahead.bundle.js','node_modules/typeahead.js/dist/typeahead.bundle.min.js']).pipe(gulp.dest('build/js'));
  gulp.src(['node_modules/swiper/dist/css/swiper.css','node_modules/swiper/dist/css/swiper.min.css']).pipe(gulp.dest('build/css'));
  gulp.src(['node_modules/swiper/dist/js/swiper.js','node_modules/swiper/dist/js/swiper.min.js']).pipe(gulp.dest('build/js'));
  gulp.src(['node_modules/jquery-countdown/dist/jquery.countdown.js','node_modules/jquery-countdown/dist/jquery.countdown.min.js']).pipe(gulp.dest('build/js'));
  gulp.src(['node_modules/nouislider/distribute/nouislider.css','node_modules/nouislider/distribute/nouislider.min.css']).pipe(gulp.dest('build/css'));
  gulp.src(['node_modules/nouislider/distribute/nouislider.js','node_modules/nouislider/distribute/nouislider.min.js']).pipe(gulp.dest('build/js'));
  gulp.src('node_modules/photoswipe/dist/photoswipe.css').pipe(gulp.dest('build/css')).pipe(cleanCSS()).pipe(rename({suffix:'.min'})).pipe(gulp.dest('build/css'));;
  gulp.src('node_modules/photoswipe/dist/default-skin/*.*').pipe(gulp.dest('build/css/photoswipe-default-skin'));
  gulp.src('node_modules/photoswipe/dist/default-skin/default-skin.css').pipe(cleanCSS()).pipe(rename({suffix:'.min'})).pipe(gulp.dest('build/css/photoswipe-default-skin'));;
  gulp.src(['node_modules/photoswipe/dist/photoswipe.js','node_modules/photoswipe/dist/photoswipe.min.js']).pipe(gulp.dest('build/js'));
  gulp.src(['node_modules/photoswipe/dist/photoswipe-ui-default.js','node_modules/photoswipe/dist/photoswipe-ui-default.min.js']).pipe(gulp.dest('build/js'));
  gulp.src('node_modules/raty-js/lib/jquery.raty.js').pipe(gulp.dest('build/js')).pipe(uglify()).pipe(rename({suffix:'.min'})).pipe(gulp.dest('build/js'));;
  gulp.src('node_modules/raty-js/lib/images/*.*').pipe(gulp.dest('build/img/raty'));
});

gulp.task('watch', function() {
  gulp.watch('src/mustache/data.json', ['html']);
  gulp.watch('src/mustache/**/*.mustache', ['html']);
  gulp.watch('src/scss/*.scss', ['css']);
  gulp.watch('src/js/*.js', ['js']);
});