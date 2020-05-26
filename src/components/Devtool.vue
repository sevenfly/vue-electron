<template>
	<webview id="devtool" autosize="on" src="" style="width:100%; height:100%;"></webview>
</template>

<script>
	import axios from 'axios'
	export default {
		name: 'Devtool',
		mounted() {
			let webviewHtml = document.querySelector("#webviewHtml");
			webviewHtml.addEventListener("did-start-loading", this.loadstart);
		},
		methods:{
			loadstart:function(){
				axios.get('http://localhost:14600/json/list').then(({data}) => {
					let _url = '';
					data.forEach((item,index) => {
						if(item.url.indexOf("baidu.com") != -1){
							_url = item.devtoolsFrontendUrl;
						}
					})
					
					_url = _url.split("?ws=")[1];
					document.querySelector("#devtool").setAttribute("src",'http://localhost:14600/devtools/devtools_app.html?ws='+_url);
				})
			}
		}
	}
</script>
	
<style scoped>
	
</style>
