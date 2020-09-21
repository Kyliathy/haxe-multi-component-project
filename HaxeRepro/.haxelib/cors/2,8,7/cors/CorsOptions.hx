package cors;

typedef CorsOptions = {
	@:optional
	var origin : ts.AnyOf5<String, Bool, js.lib.RegExp, Array<ts.AnyOf2<String, js.lib.RegExp>>, CustomOrigin>;
	@:optional
	var methods : ts.AnyOf2<String, Array<String>>;
	@:optional
	var allowedHeaders : ts.AnyOf2<String, Array<String>>;
	@:optional
	var exposedHeaders : ts.AnyOf2<String, Array<String>>;
	@:optional
	var credentials : Bool;
	@:optional
	var maxAge : Float;
	@:optional
	var preflightContinue : Bool;
	@:optional
	var optionsSuccessStatus : Float;
};