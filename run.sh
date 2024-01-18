# Criando o package.json
yarn init -y

# 3 dependências do Babel em desenvolvimento
yarn add @babel/core @babel/preset-env @babel/cli -D

# criar arquivo .babelrc com o conteúdo para configurar a transpilação
# {
#     "presets": ["@babel/preset-env"]
# }

# adicionando o preset do babel para ele entender react, transpilação do jsx
yarn add @babel/preset-react -D

# o arquivo .babelrc deve ficar assim
# {
#     "presets": [
#         "@babel/preset-env",
#         "@babel/preset-react"
#     ]
# }

# instalando o react e react-dom(para uso web)
yarn add react@^17.0.2 react-dom@^17.0.2

# adicionando webpack
yarn add webpack webpack-cli -D
# obs: no windows é necessário disponibilizar o webpack de forma global
yarn add webpack-cli -g

# arquivo webpack.config.js
# const path = require('path');

# module.exports = {
#     //entry: 'src/index.js'
#     entry: path.resolve(__dirname, 'src', 'index.js'),
#     output: {
#         path: path.resolve(__dirname, 'build'),
#         filename: 'bundle.js'
#     }
# };

# gerando o bundle
yarn webpack

# add plugin html-webpack para automatizar o processo de injeção da tag script no index.html da pasta public
yarn add html-webpack-plugin --dev

# limpando os arquivos de bundle automáticamente
yarn add clean-webpack-plugin -D

# adicionando o loader do babel para usarmos a configuração de transpilação pelo webpack.config.js
npm install -D babel-loader

# neste ponto o nosso package.json ficará
# {
#   "name": "react-fundamentos",
#   "version": "1.0.0",
#   "main": "index.js",
#   "repository": "git@github.com:brunosansp/react-fundamentos.git",
#   "author": "Bruno Santos",
#   "license": "MIT",
#   "scripts": {
#     "build": "webpack"
#   },
#   "dependencies": {
#     "react": "^17.0.2",
#     "react-dom": "^17.0.2"
#   },
#   "devDependencies": {
#     "@babel/core": "^7.23.7",
#     "@babel/preset-env": "^7.23.7",
#     "@babel/preset-react": "^7.23.3",
#     "babel-loader": "^9.1.3",
#     "clean-webpack-plugin": "^4.0.0",
#     "html-webpack-plugin": "^5.6.0",
#     "webpack": "^5.89.0",
#     "webpack-cli": "^5.1.4"
#   }
# }

# o arquivo webpack.config.js ficará
# const path = require('path');
# const HtmlWebpackPlugin = require('html-webpack-plugin');
# const { CleanWebpackPlugin } = require('clean-webpack-plugin');

# module.exports = {
#     /**
#      * Sempre que trabalharmos com React e Webpack
#      * o arquivo que iremos passar como entry é o arquivo
#      * que tiver a chamada ReactDOM.render()
#      */
#     entry: path.resolve(__dirname, 'src', 'index.js'),
#     output: {
#         path: path.resolve(__dirname, 'build'),
#         filename: 'bundle[hash].js'
#     },
#     plugins: [
#         new HtmlWebpackPlugin({
#             template: path.resolve(__dirname, 'public', 'index.html')
#         }),
#         new CleanWebpackPlugin()
#     ],
#     module: {
#         rules: [
#             // cada objeto irá representar um loader
#             {
#                 test: /\.js$/,
#                 exclude: /node_modules/,
#                 use: 'babel-loader'
#             }
#         ]
#     }
# };

# adicionando um servidor webpack local para agilizar o desenvolvimento e não precisar
# ficar fazendo build para refletir as mudanças. Isso deve ficar somente em desenvolvimento.
yarn add webpack-dev-server -D

# necessário adicionar nos scripts em package.json
"dev": "webpack serve"

# adicionar o trecho em webpack.config.js para mudar a porta onde a aplicação está rodando
# devServer: {
#         port: 3000
#     }

