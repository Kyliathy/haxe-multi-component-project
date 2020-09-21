package cors;

typedef CustomOrigin = (requestOrigin:Null<String>, callback:ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, allow:Bool) -> Void>) -> Void;