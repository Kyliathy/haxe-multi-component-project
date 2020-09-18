const { sh } = require("tasksfile");

const changeOpts = " -v -k -p 100 --await-write-finish 500 ";

function start(options, gamemodules) {
  game(gamemodules);
}

function game(gamemodules) {
  let modules = gamemodules.split(",");
  let command = "onchange " + changeOpts;
  for (const module of modules) {
    command += "../" + module + "/source ";
  }
  command += " -- npx task watch:change:game";
  sh(command, { async: true });
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
