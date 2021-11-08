<template lang="pug">
	section.section
  .container
    h1.title
      | Hello {name} {symbol}
    p.subtitle
      | My first website with 
      strong Bulma
      | !
</template>

<script lang="ts">
	export let name: string;
  var symbol = '!';
	var ws = new WebSocket("ws://100.115.92.203:5000/socket");
	ws.onmessage = function(event) {
  		console.log("WebSocket message received:", event);
	};
</script>

<style lang="scss">

</style>
