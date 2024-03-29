// Hello World in Dotnet !

namespace Hello.World;

public class HelloWorld {
    public static void PrintGreeting(string[] args) {
        if (args.Length > 0) {
            string name = string.Join(" ", args);
            Console.WriteLine($"Hi {name}, greetings from Dotnet !");
        } else {
            Console.WriteLine("Hello World from Dotnet !");
        }
    }

    public static void PrintDate() {
        DateTime currentDate = DateTime.Now;
        string layout = "MMMM d, yyyy HH:mm";
        string formattedDate = currentDate.ToString(layout);
        Console.WriteLine($"Today is {formattedDate}");
    }

    static void Main(string[] args) {
        PrintGreeting(args);
        PrintDate();
    }
}
