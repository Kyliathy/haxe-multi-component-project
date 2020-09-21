import js.Node.console;
import luxon.DateTime;

// IMPORTANT: use dts2hx on luxon, express and source-map-support.
// More details here: https://github.com/haxiomic/dts2hx
// Entry point.
class MainNode {
	static var i:Int = 0;

	static function main() {
		SourceMapSupport.install();
		// Configure our HTTP server to respond with Hello World to all requests.
		console.log("Start server now!");
		var server = js.node.Http.createServer(function(request, response) {
			response.writeHead(200, {"Content-Type": "text/plain"});

			var h:Human = new Human("Bob", 11, false, "Fisherman");

			console.log("Got a Standard HTTP Server request from URL: " + request.url);
			response.end("Hello Human " + h);
		});

		// Listen on port 8000, IP defaults to 127.0.0.1
		server.listen(8000);

		// Put a console.log on the terminal
		trace("Server running at 127.0.0.1:8000");

		// Starting an Express server too!

		var app = Express.call();
		var port = 3000;
		app.get('/', (req, res, next) -> {
			var human:Human = new Human("Bob", 11, false, "Fisherman");
			var luxon:DateTime = DateTime.local();
			console.log("Got an Express Server request from URL: " + req.url);
			res.send('Hello World! Here is Human ' + human + " at Luxon Minute: " + luxon.minute);
		});
		app.listen(port, () -> trace('Example app listening at http://localhost:${port}'));
	}
}
