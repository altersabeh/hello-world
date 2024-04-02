use chrono::Local;
use colored::Colorize;
use rstest::rstest;
use translator::translate;

fn format_error_message(expected: &str, actual: &str) -> colored::ColoredString {
    format!(
        "\n\nTest run at: {}\nExpected : {}\nActual   : {}\n",
        Local::now().to_rfc3339(),
        expected,
        actual
    )
    .red()
}

#[rstest(
    lang,
    expected_output,
    case::english("English", "Hi Alter Sabeh, greetings from Cargo !"),
    case::french("French", "Bonjour Alter Sabeh, salutations de Cargo !"),
    case::spanish("Spanish", "Hola Alter Sabeh, saludos desde Cargo !"),
    case::german("German", "Hallo Alter Sabeh, grüße aus Cargo !"),
    case::italian("Italian", "Ciao Alter Sabeh, saluti da Cargo !"),
    case::dutch("Dutch", "Hallo Alter Sabeh, groeten uit Cargo !"),
    case::unknown("Unknown", "Hi Alter Sabeh, greetings from Cargo !")
)]

fn test_translate(lang: &str, expected_output: &str) {
    let name = "Alter Sabeh";
    let actual_output = translate(lang, name);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}
