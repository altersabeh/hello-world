use rstest::rstest;
use translator::translate;

#[rstest(
    lang,
    expected,
    case::english("English", "Hi Alter Sabeh, greetings from Cargo !"),
    case::french("French", "Bonjour Alter Sabeh, salutations de Cargo !"),
    case::spanish("Spanish", "Hola Alter Sabeh, saludos desde Cargo !"),
    case::german("German", "Hallo Alter Sabeh, grüße aus Cargo !"),
    case::italian("Italian", "Ciao Alter Sabeh, saluti da Cargo !"),
    case::dutch("Dutch", "Hallo Alter Sabeh, groeten uit Cargo !"),
    case::unknown("Unknown", "Hi Alter Sabeh, greetings from Cargo !")
)]

fn test_translate(lang: &str, expected: &str) {
    let name = "Alter Sabeh";
    assert_eq!(translate(lang, name), expected);
}
