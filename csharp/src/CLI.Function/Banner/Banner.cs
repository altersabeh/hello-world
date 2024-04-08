using Prog.Goodbye.World;

namespace Prog.CLI.Function;

public class Banner
{
    /// <summary> <h1><c>PrintBannerMessage</c></h1>
    /// <br/><br/>This method prints the banner message.<br/><br/>
    /// </summary>
    public static void PrintBannerMessage()
    {
        Console.WriteLine(GoodbyeWorld.PrintBanner());
    }
}
