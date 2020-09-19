import js.Node.console;
import luxon.DateTime;

class MainNode {
	static var i:Int = 0;

	static function main() {
		SourceMapSupport.install();
		// Configure our HTTP server to respond with Hello World to all requests.
		console.log("Start server now!");
		var server = js.node.Http.createServer(function(request, response) {
			response.writeHead(200, {"Content-Type": "text/plain"});

			var h:Human = new Human("Bob", 11, false, "Fisherman");

			console.log("hai salut because url was " + request.url);
			response.end("Hello Human " + h);
		});

		// Listen on port 8000, IP defaults to 127.0.0.1
		server.listen(8000);

		// Put a console.log on the terminal
		trace("Server running at 127.0.0.1:8000");

		var app = Express.call();
		var port = 3000;
		app.get('/', (req, res, next) -> {
			var h:Human = new Human("Bob", 11, false, "Fisherman");
			var cucu:DateTime = DateTime.local();
			res.send('Hellossz Worlda!  ' + h + " on1 " + cucu.minute);
		});
		app.listen(port, () -> trace('Example app listening at http://localhost:${port}'));
	}
}
