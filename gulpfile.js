'use strict';

var gulp = require('gulp');
var sass = require('gulp-sass');
var sourcemaps = require('gulp-sourcemaps');

gulp.task('sass', function () {

  console.log('sass task is running by gulp .....');
  return gulp
    .src('./app/public/css/**/*.scss')
    .pipe(sourcemaps.init())
    .pipe(sass().on('error', sass.logError))
    .pipe(sourcemaps.write())
    .pipe(gulp.dest('./app/public/css'));
});

gulp.task('sass:watch', function () {
  console.log('sass:watch task is running by gulp .....');

  gulp.watch('./app/public/css/**/*.scss', ['sass']);
});

gulp.task('default', ['sass','sass:watch'], function () {
});
