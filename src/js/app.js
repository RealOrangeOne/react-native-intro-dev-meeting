/* global hljs */
import Reveal from 'reveal.js';

window.Reveal = Reveal;

Reveal.initialize({
  controls: true,
  progress: true,
  history: true,
  center: true,

  width: 1500,
  height: 800,

  transition: 'slide',

  dependencies: [{
    src: 'js/plugin/highlight/highlight.js',
    async: true,
    callback: () => hljs.initHighlightingOnLoad()
  }]
});
