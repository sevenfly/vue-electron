const MonacoWebpackPlugin = require('monaco-editor-webpack-plugin')
const path = require('path')
module.exports = {
  // options...
  lintOnSave: false,
  publicPath: '',
  devServer: {
    port: 8088 // 端口
  },
  configureWebpack: {
    plugins: [
      new MonacoWebpackPlugin()
    ]
  },
  configureWebpack: config => {
    config.target = 'electron-renderer'
  }

}
