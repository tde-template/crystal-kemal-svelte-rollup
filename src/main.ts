import App from './App.svelte'; // eslint-disable-next-line @typescript-eslint/ban-ts-comment // @ts-ignore

const app = new App({
	target: document.body,
	props: {
		name: 'world'
	}
});

export default app;