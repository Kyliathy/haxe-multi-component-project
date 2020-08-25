const { sh } = require("tasksfile");

const compile = {
  final() {
    sh("haxe build.hxml --no-traces -D analyzer-optimize", { nopipe: true });
    //sh("uglifyjs --compress --mangle --output web/html/main.js -- web/html/main.js", { nopipe: true });
  },
  debug() {
    //In Debug builds, skip analyzer-optimize since it messes with (admittedly redundant) local variables.
    //sh("haxe build.hxml --connect 6060 -debug -D source-map-content -D analyzer-optimize", { nopipe: true });
    
    sh("haxe build.hxml --connect 6060 -debug -D source-map-content", { nopipe: true });
  },
};

module.exports = {
  compile,
};
