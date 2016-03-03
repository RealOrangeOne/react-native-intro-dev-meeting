import Reveal from 'reveal.js'

window.Reveal = Reveal;

Reveal.initialize({
				controls: true,
				progress: true,
        history: true,
				center: true,

				transition: 'slide',

				dependencies: [
					{ src: 'js/plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } },
				]
			});
