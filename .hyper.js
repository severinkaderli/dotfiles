module.exports = {
  config: {
    fontSize: 12,

    fontFamily: 'Hack, "DejaVu Sans Mono", "Lucida Console", monospace',

    cursorColor: 'rgba(55, 59, 65, 0.75)',

    cursorShape: 'BLOCK',

    foregroundColor: '#C5C8C6',

    backgroundColor: '#000',

    borderColor: '#373B41',

    css: "",

    termCSS: "",

    padding: "12px",

    colors: [
      "#1d1f21",
      "#cc6666",
      "#b5bd68",
      "#f0c674",
      "#81a2be",
      "#b57880",
      "#8abeb7",
      "#282a2e",
      "#969896",
      "#cc6666",
      "#b5bd68",
      "#f0c674",
      "#81a2be",
      "#b57880",
      "#8abeb7",
      "#ffffff",
      "#c5c8c6"
    ],

    shell: "",

    shellArgs: ["--login"],

    env: {},

    bell: false,

    copyOnSelect: false

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyperterm.org/#cfg
  },

  plugins: [
    "hyper-tomorrow-night",
    "hyper-blink"
  ],

  localPlugins: []
};
