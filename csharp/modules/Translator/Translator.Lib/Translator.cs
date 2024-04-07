namespace Prog.Translation;

public class Translator
{
    private static Dictionary<string, string> HelloTranslations()
    {
        var map = new Dictionary<string, string>
        {
            { "French", "Bonjour" },
            { "Spanish", "Hola" },
            { "German", "Hallo" },
            { "Italian", "Ciao" },
            { "Dutch", "Hallo" }
        };
        return map;
    }

    private static Dictionary<string, string> GreetingsFromTranslations()
    {
        var map = new Dictionary<string, string>
        {
            { "French", "salutations de" },
            { "Spanish", "saludos desde" },
            { "German", "grüße aus" },
            { "Italian", "saluti da" },
            { "Dutch", "groeten uit" }
        };
        return map;
    }

    public static string Translate(string language, string name)
    {
        var helloBinding = HelloTranslations();
        var greetingsFromBinding = GreetingsFromTranslations();

        helloBinding.TryGetValue(language, out string? greeting);
        greetingsFromBinding.TryGetValue(language, out string? greetingsFrom);

        if (greeting != null && greetingsFrom != null)
        {
            return $"{greeting} {name}, {greetingsFrom} .NET !";
        }
        else
        {
            return $"Hi {name}, greetings from .NET !";
        }
    }
}
