use cargo_hello::hello_world::{print_date, print_greeting, GREETING};
use chrono::Local;
use colored::Colorize;

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
fn print_greeting_without_name_test() {
    let args = vec![];
    let expected_output = "Hello World from Cargo !".to_string();
    let actual_output = print_greeting(&args);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}

#[test]
fn print_greeting_with_name_test() {
    let args = vec!["".into(), "Alter".into(), "Sabeh".into()];
    let expected_output = "Hello Alter Sabeh from Cargo !".to_string();
    let actual_output = print_greeting(&args);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}

#[test]
fn print_date_test() {
    let now = Local::now();
    let formatted_date = now.format("%B %d, %Y at %I:%M %p").to_string();
    let expected_output = format!("Today is {}", formatted_date);
    let actual_output = print_date();
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}

#[test]
fn print_greet_test() {
    let expected_output = GREETING;
    let actual_output = "Hello, Cargo's Here!";
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_ne!(expected_output, actual_output, "{}", error_message);
}
