using System;

namespace Hello.World.Lib;

public class Greeting
{
    internal class HelloWorldToo
    {
        private readonly string greeting;

        private const string LANGUAGE = "C#";

        public HelloWorldToo(string message)
        {
            this.greeting = message;
        }

        public void DisplayGreeting()
        {
            Console.WriteLine($"{greeting} from {LANGUAGE} !");
        }
    }

    private class GoodbyeWorld
    {
        public string DisplayGoodbye()
        {
            return "Goodbye World from C# !";
        }
    }

    public struct Program
    {
        private readonly void DisplayMessage()
        {
            Console.WriteLine("C# is fun ! C# was around since 2000 !");
        }

        private static GoodbyeWorld StartGoodbye()
        {
            return new GoodbyeWorld();
        }

        public static void Start()
        {
            var helloMessage = "Hello World";
            HelloWorldToo helloWorld = new HelloWorldToo(helloMessage);
            helloWorld.DisplayGreeting();

            new Program().DisplayMessage();

            var goodbyeWorld = StartGoodbye();
            Console.WriteLine(goodbyeWorld.DisplayGoodbye());
        }
    }
}
