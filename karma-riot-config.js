module.exports = function(config) {
  config.set({
    basePath: '',
    frameworks: ['mocha', 'chai', 'riot'],
    files: [
      'src/*.tag',
      'test/*-spec.js'
    ],
    exclude: [],
    preprocessors: {
      'src/**/*.tag': ['riot']
    },

    reporters: ['progress'],
    port: 9876,
    colors: true,
    logLevel: config.LOG_INFO,
    autoWatch: true,
    browsers: ['Chrome'],
    singleRun: false,
    concurrency: Infinity
  })
};
