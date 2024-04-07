namespace Prog.Translation.Tests;

[TestFixture]
public class TranslationTests
{
    private static string FormatErrorMessage(string expected, string actual)
    {
        return $"\nTest run at: {DateTime.Now:O}\nExpected : {expected}\nActual   : {actual}\n";
    }

    private static readonly object[] TestCases =
    [
        new object[] { "English", "Hi Alter Sabeh, greetings from C# !" },
        new object[] { "French", "Bonjour Alter Sabeh, salutations de C# !" },
        new object[] { "Spanish", "Hola Alter Sabeh, saludos desde C# !" },
        new object[] { "German", "Hallo Alter Sabeh, grüße aus C# !" },
        new object[] { "Italian", "Ciao Alter Sabeh, saluti da C# !" },
        new object[] { "Dutch", "Hallo Alter Sabeh, groeten uit C# !" },
        new object[] { "Unknown", "Hi Alter Sabeh, greetings from C# !" }
    ];

    [TestCaseSource(nameof(TestCases))]
    public void TestTranslate(string language, string expectedOutput)
    {
        string name = "Alter Sabeh";
        string actualOutput = Translator.Translate(language, name);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }
}
