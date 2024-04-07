namespace Prog.Goodbye.World;

public class GoodbyeWorld
{
    public static string PrintGoodbye(string[] args)
    {
        if (args.Length > 0)
        {
            string name = string.Join(" ", args);
            return $"Goodbye {name} from C# !";
        }
        else
        {
            return "Goodbye World from C# !";
        }
    }

    public static string PrintBanner()
    {
        return @"
        ███▄    █▓████▄▄▄█████▓
        ██ ▀█   █▓█   ▓  ██▒ ▓▒
       ▓██  ▀█ ██▒███ ▒ ▓██░ ▒░
       ▓██▒  ▐▌██▒▓█  ░ ▓██▓ ░
   ██▓ ▒██░   ▓██░▒████▒▒██▒ ░
   ▒▓▒ ░ ▒░   ▒ ▒░░ ▒░ ░▒ ░░
   ░▒  ░ ░░   ░ ▒░░ ░  ░  ░
   ░      ░   ░ ░   ░   ░
    ░           ░   ░  ░
    ░
".Replace("\r\n", "\n");
    }
}
