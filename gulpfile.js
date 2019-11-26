const gulp = require('gulp');
const $ = require('gulp-load-plugins')();
const browserSync = require('browser-sync');

const uglifyes = require('uglify-es'); // compile es6
const composer = require('gulp-uglify/composer');

const uglify = composer(uglifyes, composer);

const paths = {
	pugIncludes: '!./src/pug/**/_*.pug',
	pugSrc: './src/pug/**/*.pug',
	htmlSrc: './dist/*.html',
	scssSrc: './src/scss/**/*.scss',
	jsSrc: './src/js/*.js',
	jsLib: './src/js/lib/*.js',
	imgSrc: './src/img/**',
	rootDir: './dist/',
	imgDir: './dist/img/',
	jsDir: './dist/js/'
};

gulp.task('bs', () => {
	browserSync.init({
		server: {
			baseDir: paths.rootDir
		},
		notify: true,
		xip: false
	});
});

gulp.task('bs-reload', () => {
	browserSync.reload();
});

gulp.task('pug', () => {
	const option = {
		pretty: true
	};
	return gulp
		.src([paths.pugSrc, paths.pugIncludes])
		.pipe(
			$.plumber({
				errorHandler: $.notify.onError('Error: <%= error.message %>')
			})
		)
		.pipe($.pug(option))
		.pipe(gulp.dest(paths.rootDir));
});

gulp.task('scss', () => {
	return gulp
		.src(paths.scssSrc)
		.pipe($.sourcemaps.init())
		.pipe($.sass())
		.on('error', $.sass.logError)
		.pipe(
			$.autoprefixer({
				browsers: ['last 2 versions']
			})
		)
		.pipe($.sourcemaps.write())
		.pipe(gulp.dest(paths.rootDir + 'css'))
		.pipe(
			$.rename({
				suffix: '.min'
			})
		)
		.pipe($.csso())
		.pipe(gulp.dest(paths.rootDir + 'css'))
		.pipe(
			browserSync.reload({
				stream: true,
				once: true
			})
		);
});

gulp.task('image', () => {
	return gulp
		.src(paths.imgSrc)
		.pipe($.changed(paths.imgDir))
		.pipe(
			$.imagemin({
				optimizationLevel: 3
			})
		)
		.pipe(gulp.dest(paths.imgDir));
});

gulp.task('js', () => {
	return gulp
		.src([paths.jsLib, paths.jsSrc])
		.pipe($.plumber())
		.pipe(uglify({ output: { comments: /^!/ } }))
		.pipe($.concat('main.min.js', { newLine: '\n' }))
		.pipe(gulp.dest(paths.jsDir));
});

// gulp.task('default', ['image', 'js', 'bs', 'scss', 'pug', 'bs-reload'], () => {
gulp.task('default', ['image', 'js', 'scss'], () => {
	// gulp.watch([paths.htmlSrc], ['bs-reload']);
	// gulp.watch([paths.pugSrc], ['pug']);
	gulp.watch([paths.scssSrc], ['scss']);
	gulp.watch([paths.imgSrc], ['image']);
	gulp.watch([paths.jsSrc], ['js']);
});
