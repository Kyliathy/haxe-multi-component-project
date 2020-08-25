const { sh } = require("tasksfile");

const changeOpts = " -v -k -p 100 --await-write-finish 500 ";

function start(options, gamemodule) {
  game(gamemodule);
}

function game(gamemodule) {
  sh("onchange " + changeOpts + " ../" + gamemodule + "/source -- npx task watch:change:game", { async: true });
}

const change = {
  game() {
    sh("npx task build:compile:debug", { nopipe: true });
  },
};

module.exports = {
  start,
  change,
};
