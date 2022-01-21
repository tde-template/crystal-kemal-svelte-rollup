<template lang="pug">
	section.section
  .container
    h1.title
      | Hello {name} {symbol}
    p.subtitle
      | My first website with 
      strong Bulma
      | !
    button(on:click='{handleClick}') {buttonText}
</template>

<script lang="ts">
	export let name: string;
  let symbol = '!';
	let ws = new WebSocket("ws://127.0.0.1:5000/socket");
  let buttonText = 'Button';

  function handleClick() {
    buttonText = 'Button Clicked'
  }

	ws.onmessage = function(event) {
  		console.log("WebSocket message received:", event);
	};
</script>

<style lang="scss">

</style>
