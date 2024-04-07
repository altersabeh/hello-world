namespace Prog.Goodbye.World;

public class GoodbyeWorld
{
    public static string PrintGoodbye(string[] args)
    {
        if (args.Length > 0)
        {
            string name = string.Join(" ", args);
            return $"Goodbye {name} from .NET !";
        }
        else
        {
            return "Goodbye World from .NET !";
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
";
    }
}
