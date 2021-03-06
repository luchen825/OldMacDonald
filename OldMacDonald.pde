
void setup()
{
	Farm oldMac = new Farm();
	oldMac.showAnimals();
}
interface Animal
{
	public String getSound();
	public String getType();
}
class Cow implements Animal
{
	protected String mySound;
	protected String myType;
	public Cow()
	{
		myType = "unknown";
		mySound = "unknown";
	}
	public Cow(String sound, String type)
	{
		mySound = sound;
		myType = type;
	}
	public String getSound()
	{
		return mySound;
	}
	public String getType()
	{
		return myType;
	}
}
class NamedCow extends Cow
{
	private String myName;
	public NamedCow(String name, String sound, String type)
	{
		myName = name;
		mySound = sound;
		myType = type;
	}
	public String getName()
	{
		return myName;
	}
}
class Chicken implements Animal
{
	private String mySound;
	private String myType;
	public Chicken(String sound1, String sound2, String type1)
	{
		if(Math.random() > 0.5)
		{
			mySound = sound1;
		}
		else
		{
			mySound = sound2;
		}
		myType = type1;
	}
	public String getSound()
	{
		return mySound;
	}
	public String getType()
	{
		return myType;
	}
}
class Pig implements Animal
{
	private String mySound;
	private String myType;
	public Pig(String sound1, String type1)
	{
		mySound = sound1;
		myType = type1;
	}
	public String getSound()
	{
		return mySound;
	}
	public String getType()
	{
		return myType;
	}
}
class Farm
{
	private Animal [] someAnimals = new Animal[3];
	public Farm()
	{
		someAnimals[0] = new NamedCow("Elsie","Moo","Cow");
		someAnimals[1] = new Chicken("Cheep","Cluck","Chicken");
		someAnimals[2] = new Pig("Oink","Pig");
	}
	public void showAnimals()
	{
		for(int i=0; i < someAnimals.length; i++)
		{
			System.out.println(someAnimals[i].getType() + " goes " + someAnimals[i].getSound() + ".");
		}
		System.out.println("The cow is named " + ((NamedCow)someAnimals[0]).getName() + ".");
	}
}
