var path = require('path');

module.exports = {
    mode: 'development',
    entry: path.join(__dirname, 'srcjs', 'offRating.jsx'),
    output: {
        path: path.join(__dirname, 'inst', 'www', '${package}', 'offRating'),
        path: path.join(__dirname, 'inst/www/officeInputs/offRating'),
        filename: 'offRating.js'
    },
    module: {
        rules: [
            {
                test: /\.jsx?$/,
                loader: 'babel-loader',
                options: {
                    presets: ['@babel/preset-env', '@babel/preset-react']
                }
            }
        ]
    },
    externals: {
        'react': 'window.React',
        'react-dom': 'window.ReactDOM',
        'reactR': 'window.reactR'
    },
    stats: {
        colors: true
    },
    devtool: 'source-map'
};