import lib2.inheritancetest.Mammal;

class Human extends Mammal
{
	public var job: String;

	public function new(name: String, age: Int, female: Bool, job: String)
	{
		this.job = job;
		super(name, age, female, 2);
	}

	public function toString(): String
	{
		return name
			+ " is "
			+ age
			+ " years old, has "
			+ mammaryGlands
			+ (female ? "" : " (mostly) unusable")
			+ " mammary glands and is a "
			+ job;
	}
}