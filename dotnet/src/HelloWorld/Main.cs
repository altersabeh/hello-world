// Hello World in Dotnet

namespace Hello.World;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine(HelloWorld.PrintGreeting(args));
        Console.WriteLine(HelloWorld.PrintDate());
    }
}
