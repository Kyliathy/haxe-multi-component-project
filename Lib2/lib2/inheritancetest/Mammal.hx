package lib2.inheritancetest;

import lib1.inheritancetest.Animal;

class Mammal extends Animal
{
	public var mammaryGlands: Int;

	public function new(name: String, age: Int, female: Bool, mammaryGlands: Int)
	{
		this.mammaryGlands = mammaryGlands;
		super(name, age, female);
	}
}