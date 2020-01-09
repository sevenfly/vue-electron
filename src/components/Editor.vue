<template>
	<div id="editor"></div>
</template>

<script>
import { Vue, Component, Watch } from 'vue-property-decorator'
import * as monaco from 'monaco-editor'
export default {
  name: 'Editor',
  mounted () {
    var monacoEditor = monaco.editor.create(document.getElementById('editor'), {
      value: [
        'function x() {',
        '\tconsole.log("Hello world!");',
        '}'
      ].join('\n'),
      language: 'javascript',
      wrappingColumn: 0,
      wrappingIndent: 'indent'
    })
    // 自适应宽度
    window.onresize = function () {
			    if (monacoEditor) {
			        monacoEditor.layout()
			    }
    }
  }
}

</script>

<style scoped>
	#editor{
		height: 100%;
		text-align: left;
	}
</style>
