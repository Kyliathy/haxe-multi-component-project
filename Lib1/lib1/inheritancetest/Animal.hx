package lib1.inheritancetest;

class Animal
{
	public var name: String;
	public var age: Int;
	public var female: Bool;

	public function new(name: String, age: Int, female: Bool)
	{
		this.name = name;
		this.age = age;
		this.female = female;
	}
}