module.exports = {
  config: {
    fontSize: 12,

    fontFamily: 'Hack, "DejaVu Sans Mono", "Lucida Console", monospace',

    cursorColor: 'rgba(248,28,229,0.75)',

    cursorShape: 'BLOCK',

    foregroundColor: '#fff',

    backgroundColor: '#000',

    borderColor: '#333',

    css: '',

    termCSS: '',

    padding: '12px 14px',

    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffffF0',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },

    shell: '',

    shellArgs: ['--login'],

    env: {},

    bell: false,

    copyOnSelect: false

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyperterm.org/#cfg
  },

  plugins: [
    "hyperterm-tomorrow-night"
  ],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
