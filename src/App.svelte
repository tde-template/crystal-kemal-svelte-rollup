<script lang="ts">
	export let name: string;
	var ws = new WebSocket("ws://100.115.92.203:5000/socket");
	ws.onmessage = function(event) {
  		console.log("WebSocket message received:", event);
	};
</script>

<main>
	<h1>Hello {name}!</h1>
</main>

<style>
	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}

	h1 {
		color: #ff3e00;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>