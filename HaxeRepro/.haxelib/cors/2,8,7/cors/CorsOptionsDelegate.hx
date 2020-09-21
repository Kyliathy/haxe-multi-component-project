package cors;

typedef CorsOptionsDelegate = (req:express.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>, callback:ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, options:CorsOptions) -> Void>) -> Void;