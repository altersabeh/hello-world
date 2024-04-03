using System.Linq;
using System.Text;

namespace Hello.World;

public class HelloWorld
{
    public static string PrintGreeting(string[] args)
    {
        if (args.Length > 0)
        {
            string name = string.Join(" ", args);
            return $"Hi {name}, greetings from .NET !";
        }
        else
        {
            return "Hello World from .NET !";
        }
    }

    public static string PrintDate()
    {
        DateTime currentDate = DateTime.Now;
        string layout = "MMMM d, yyyy 'at' hh:mm tt";
        string formattedDate = currentDate.ToString(layout);
        return $"Today is {formattedDate}";
    }
}
