const { sh } = require("tasksfile");

const compile = {
  final() {
    sh("haxe build-node.hxml --no-traces -D analyzer-optimize", { nopipe: true });
    //sh("uglifyjs --compress --mangle --output web/html/main.js -- web/html/main.js", { nopipe: true });
  },
  debug(options) {
    //In Debug builds, skip analyzer-optimize since it messes with (admittedly redundant) local variables.
    //sh("haxe build.hxml --connect 6060 -debug -D source-map-content -D analyzer-optimize", { nopipe: true });

    console.log("Received instructions to use the following build HXML: " + options["buildhxml"]);
    sh("haxe " + options["buildhxml"] + " --connect 6060 -debug -D source-map-content", { nopipe: true });
  },
};

module.exports = {
  compile,
};
