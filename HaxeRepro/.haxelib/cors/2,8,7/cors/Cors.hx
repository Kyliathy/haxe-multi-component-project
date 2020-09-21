package cors;

import cors.CorsOptions;
import cors.CorsOptionsDelegate;
import express.RequestHandler;
import express_serve_static_core.ParamsDictionary;

@:jsRequire("cors") @:jsRequire("express") extern class HowToMapThis
{
	function e(?options: ts.AnyOf2<CorsOptions, CorsOptionsDelegate>): RequestHandler<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>;
}