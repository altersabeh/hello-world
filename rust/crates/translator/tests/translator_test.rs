use chrono::Local;
use colored::Colorize;
use rstest::rstest;
use translator::translate;

/// # `format_error_message`
///
/// This function formats the error message for the test cases.
///
/// __Arguments:__
///
/// * `expected: &Vec<BigUint>` - The expected output.
/// * `actual: &Vec<BigUint>` - The actual output.
///
/// __Return:__
///
/// * `colored::ColoredString` - The formatted error message.
fn format_error_message(expected: &str, actual: &str) -> colored::ColoredString {
    format!(
        "\n\nTest run at: {}\nExpected : {}\nActual   : {}\n",
        Local::now().to_rfc3339(),
        expected,
        actual
    )
    .red()
}

/// # `test_translate`
///
/// This function tests the `translate` function.
#[rstest(
    lang,
    expected_output,
    case::english("English", "Hi Alter Sabeh, greetings from Rust !"),
    case::french("French", "Bonjour Alter Sabeh, salutations de Rust !"),
    case::spanish("Spanish", "Hola Alter Sabeh, saludos desde Rust !"),
    case::german("German", "Hallo Alter Sabeh, grüße aus Rust !"),
    case::italian("Italian", "Ciao Alter Sabeh, saluti da Rust !"),
    case::dutch("Dutch", "Hallo Alter Sabeh, groeten uit Rust !"),
    case::unknown("Unknown", "Hi Alter Sabeh, greetings from Rust !")
)]
fn test_translate(lang: &str, expected_output: &str) {
    let name = "Alter Sabeh";
    let actual_output = translate(lang, name);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}
