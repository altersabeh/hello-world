namespace Prog.Translation;

public class Translator
{
    /// <summary> <h1><c>HelloTranslations</c></h1>
    /// <br/><br/>This method returns a dictionary of translations for the word
    /// "Hello" in different languages.<br/><br/>
    /// </summary>
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

    /// <summary> <h1><c>GreetingsFromTranslations</c></h1>
    /// <br/><br/>This method returns a dictionary of translations for the
    /// phrase "Greetings from" in different languages.<br/><br/>
    /// </summary>
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

    /// <summary> <h1><c>Translate</c></h1>
    /// <br/><br/>This method translates the name into the specified
    /// language.<br/><br/>
    ///
    /// <b>Arguments:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>language: string</c> - The language in which the name is to be
    /// translated
    /// </item>
    /// <item>
    /// <c>name: string</c> - The name to be translated.
    /// </item>
    /// </list>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The translated name.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Prog.Translation;
    /// translatedName = Translator.Translate("French", "Alice");
    /// Console.WriteLine(translatedName);</code>
    ///
    /// <b>Output:</b>
    /// <code>
    /// "Bonjour Alice, salutations de C# !"</code>
    /// </summary>
    public static string Translate(string language, string name)
    {
        var helloBinding = HelloTranslations();
        var greetingsFromBinding = GreetingsFromTranslations();

        helloBinding.TryGetValue(language, out string? greeting);
        greetingsFromBinding.TryGetValue(language, out string? greetingsFrom);

        if (greeting != null && greetingsFrom != null)
        {
            return $"{greeting} {name}, {greetingsFrom} C# !";
        }
        else
        {
            return $"Hi {name}, greetings from C# !";
        }
    }
}
