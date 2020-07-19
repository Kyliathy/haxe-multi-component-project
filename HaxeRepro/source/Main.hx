import js.Browser;

class Main {
	static function main() {
		trace("test");
		var a:Int = 14;
		var b:Int = 5;
		var c:Float = a + b;
		c = c + 2;
		c = c * 4;
		c = c / 3;

		var h: Human = new Human();

		Browser.alert("Result is " + c);
	}
}
