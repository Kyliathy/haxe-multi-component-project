const { sh } = require("tasksfile");
const build = require("./build");

const changeOpts = " -v -k -p 100 --await-write-finish 500 ";

function start(options, gamemodules, buildHXML) {
  game(gamemodules, buildHXML);
}

function game(gamemodules, buildHXML) {
  console.log("Received custom build HXML as: " + buildHXML);
  let modules = gamemodules.split(",");
  let command = "onchange " + changeOpts;
  for (const module of modules) {
    command += "../" + module + "/source ";
  }
  command += " -- npx cross-var task watch:change:game --buildhxml=" + buildHXML;

  sh(command, { async: true });
}

const change = {
  game(options) {
    sh("npx cross-var task build:compile:debug --buildhxml=" + options["buildhxml"], { nopipe: true });
  },
};

module.exports = {
  start,
  change,
};
