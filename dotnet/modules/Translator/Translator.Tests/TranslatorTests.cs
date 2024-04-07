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
        new object[] { "English", "Hi Alter Sabeh, greetings from .NET !" },
        new object[] { "French", "Bonjour Alter Sabeh, salutations de .NET !" },
        new object[] { "Spanish", "Hola Alter Sabeh, saludos desde .NET !" },
        new object[] { "German", "Hallo Alter Sabeh, grüße aus .NET !" },
        new object[] { "Italian", "Ciao Alter Sabeh, saluti da .NET !" },
        new object[] { "Dutch", "Hallo Alter Sabeh, groeten uit .NET !" },
        new object[] { "Unknown", "Hi Alter Sabeh, greetings from .NET !" }
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
