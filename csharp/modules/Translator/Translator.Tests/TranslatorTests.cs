namespace Prog.Translation.Tests;

[TestFixture]
public class TranslationTests
{
    /// <summary> <h1><c>FormatErrorMessage</c></h1>
    /// <br/><br/>This method is used to format the error message.<br/><br/>
    ///
    /// <b>Arguments:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>expected: string</c> - The expected list of factors.
    /// </item>
    /// <item>
    /// <c>actual: string</c> - The actual list of factors.
    /// </item>
    /// </list>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The formatted error message.
    /// </item>
    /// </list>
    /// </summary>
    private static string FormatErrorMessage(string expected, string actual)
    {
        return $"\nTest run at: {DateTime.Now:O}\nExpected : {expected}\nActual   : {actual}\n";
    }

    /// <summary> <h1><c>TestCses</c></h1>
    /// <br/><br/>This method is used to test the Translate method of
    /// Translator.<br/><br/>
    /// </summary>
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

    /// <summary> <h1><c>TestTranslate</c></h1>
    /// <br/><br/>This method is used to test the Translate method of
    /// Translator.<br/><br/>
    /// </summary>
    [TestCaseSource(nameof(TestCases))]
    public void TestTranslate(string language, string expectedOutput)
    {
        string name = "Alter Sabeh";
        string actualOutput = Translator.Translate(language, name);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }
}
