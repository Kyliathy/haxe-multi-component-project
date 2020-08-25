const { cli } = require("tasksfile");
const build = require("./tasks/build");
const watch = require("./tasks/watch");
const dev = require("./tasks/dev");

cli({
  build,
  watch,
  dev,
});
