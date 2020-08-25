const { sh } = require("tasksfile");
const BUILDPATH = "./export";

function start() {
  server();
}

function server() {
  sh("cross-var fast-live-reload -d 2000 -s " + BUILDPATH + " --add-path " + BUILDPATH, {
    async: true,
    nopipe: true,
  });
}

module.exports = {
  start,
};
