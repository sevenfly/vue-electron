<template>
	<div class="root">
		<split-pane  :min-percent='20' :default-percent='50' split="vertical">
			<template slot="paneL">
				<div class="dv-a">
					<Html></Html>
				</div>
			</template>
			<template slot="paneR">
				<split-pane split="horizontal">
					<template slot="paneL">
						<div class="dv-b">
							<Editor></Editor>
						</div>
					</template>
					<template slot="paneR">
						<div class="dv-c">
							<Devtool></Devtool>
						</div>
					</template>
				</split-pane>
			</template>
		</split-pane>
	</div>
</template>

<script>
	import Editor from '@/components/Editor.vue'
	import Html from '@/components/Html.vue'
	import Devtool from '@/components/Devtool.vue'
	export default {
		name: "Index",
		components: {
			Editor,
			Html,
			Devtool
		}
	}
</script>

<style scoped>
	.root {
		width: 100%;
		height: 100%;
	}

	.dv-a {
		width: 100%;
		height: 100%;
	}

	.dv-b {
		width: 100%;
		height: 100%;
	}

	.dv-c {
		width: 100%;
		height: 100%;
	}
</style>
