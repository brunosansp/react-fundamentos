# Criando o package.json
yarn init -y

# 3 dependências do Babel em desenvolvimento
yarn add @babel/core @babel/preset-env @babel/cli -D

# criar arquivo .babelrc com o conteúdo para configurar a transpilação
{
    "presets": ["@babel/preset-env"]
}

# adicionando o preset do babel para ele entender react, transpilação do jsx
yarn add @babel/preset-react -D

# o arquivo .babelrc deve ficar assim
{
    "presets": [
        "@babel/preset-env",
        "@babel/preset-react"
    ]
}

# instalando o react e react-dom(para uso web)
yarn add react@^17.0.2 react-dom@^17.0.2

# adicionando webpack
yarn add webpack webpack-cli -D

# arquivo webpack.config.js
const path = require('path');

module.exports = {
    //entry: 'src/index.js'
    entry: path.resolve(__dirname, 'src', 'index.js'),
    output: {
        path: path.resolve(__dirname, 'build'),
        filename: 'bundle.js'
    }
};

# gerando o bundle
yarn webpack

# add plugin html-webpack para automatizar o processo de injeção da tag script no index.html da pasta public
yarn add html-webpack-plugin --dev

# limpando os arquivos de bundle automáticamente
yarn add clean-webpack-plugin -D

# adicionando o loader do babel para usarmos a configuração de transpilação pelo webpack.config.js
npm install -D babel-loader

