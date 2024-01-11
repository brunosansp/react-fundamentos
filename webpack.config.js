const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');

module.exports = {
    /**
     * Sempre que trabalharmos com React e Webpack
     * o arquivo que iremos passar como entry é o arquivo
     * que tiver a chamada ReactDOM.render()
     */
    entry: path.resolve(__dirname, 'transpiled', 'index.js'),
    output: {
        path: path.resolve(__dirname, 'build'),
        filename: 'bundle[hash].js'
    },
    plugins: [
        new HtmlWebpackPlugin({
            template: path.resolve(__dirname, 'public', 'index.html')
        }),
        new CleanWebpackPlugin()
    ]
};
