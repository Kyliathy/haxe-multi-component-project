import js.Browser;

class Main {
	static function main() {
		trace("test");
		var a:Int = 4;
		var b:Int = 5;
		var c:Float = a + b;
		c = c + 2;
		c = c * 4;
		c = c / 3;

		var h:Human = new Human("Bob", 10, false, "Fisherman");

		Browser.alert("Result is " + c);
	}
}
