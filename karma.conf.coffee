module.exports = (config) ->
	config.set
		basePath: ''
		frameworks: ['jasmine']
		files: ['src/test.coffee']
		exclude: []
		preprocessors: 'src/*.coffee': ['coffee']
		reporters: ['dots']
		port: 9876
		colors: true
		logLevel: config.LOG_INFO
		autoWatch: true
		browsers: ['PhantomJS']
		singleRun: true
	return
