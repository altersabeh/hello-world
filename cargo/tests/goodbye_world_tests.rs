use chrono::Local;
use colored::Colorize;

use cargo_hello::goodbye_world::{print_banner, print_goodbye};

fn format_error_message(expected: &str, actual: &str) -> colored::ColoredString {
    format!(
        "\n\nTest run at: {}\nExpected : {}\nActual   : {}\n",
        Local::now().to_rfc3339(),
        expected,
        actual
    )
    .red()
}

#[test]
fn print_goodbye_without_name_test() {
    let args = vec![];
    let expected_output = "Goodbye World from Cargo !";
    let actual_output = print_goodbye(&args);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}

#[test]
fn print_goodbye_with_name_test() {
    let args = vec!["", "Alter", "Sabeh"];
    let expected_output = "Goodbye Alter Sabeh from Cargo !";
    let actual_output = print_goodbye(&args);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}

#[test]
fn print_banner_test() {
    let expected_output = r#"
    ▄████▄  ▄▄▄      ██▀███   ▄████ ▒█████
   ▒██▀ ▀█ ▒████▄   ▓██ ▒ ██▒██▒ ▀█▒██▒  ██▒
   ▒▓█    ▄▒██  ▀█▄ ▓██ ░▄█ ▒██░▄▄▄▒██░  ██▒
   ▒▓▓▄ ▄██░██▄▄▄▄██▒██▀▀█▄ ░▓█  ██▒██   ██░
   ▒ ▓███▀ ░▓█   ▓██░██▓ ▒██░▒▓███▀░ ████▓▒░
   ░ ░▒ ▒  ░▒▒   ▓▒█░ ▒▓ ░▒▓░░▒   ▒░ ▒░▒░▒░
     ░  ▒    ▒   ▒▒ ░ ░▒ ░ ▒░ ░   ░  ░ ▒ ▒░
   ░         ░   ▒    ░░   ░░ ░   ░░ ░ ░ ▒
   ░ ░           ░  ░  ░          ░    ░ ░
   ░
"#
    .to_string();
    let actual_output = print_banner();
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}
