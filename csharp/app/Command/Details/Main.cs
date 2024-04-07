using Prog.CLI.Function;

internal class App
{
    static void Main(string[] args)
    {
        Console.WriteLine("==================================");
        Details.PrintUserDetails(args);
        Console.WriteLine("==================================");
    }
}
