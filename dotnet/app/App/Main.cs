// Hello World in .NET

using Hello.World;
using Numbers.Utils;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine(HelloWorld.PrintGreeting(args));
        Console.WriteLine(HelloWorld.PrintDate());
        Console.WriteLine("Some random numbers:");
        Console.WriteLine(NumbersUtils.FibonacciRandom());
        Console.WriteLine(NumbersUtils.FactorialRandom());
    }
}
