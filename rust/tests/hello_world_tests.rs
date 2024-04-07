use chrono::Local;
use colored::Colorize;

use prog::hello_world::{print_date, print_greeting, GREETING};

/// # `format_error_message`
///
/// This function formats the error message.
fn format_error_message(expected: &str, actual: &str) -> colored::ColoredString {
    format!(
        "\n\nTest run at: {}\nExpected : {}\nActual   : {}\n",
        Local::now().to_rfc3339(),
        expected,
        actual
    )
    .red()
}

/// # `print_greeting_without_name_test`
///
/// This function tests the `print_greeting` function without a name.
#[test]
fn print_greeting_without_name_test() {
    let args = vec![];
    let expected_output = "Hello World from Cargo !";
    let actual_output = print_greeting(&args);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}

/// # `print_greeting_with_name_test`
///
/// This function tests the `print_greeting` function with a name.
#[test]
fn print_greeting_with_name_test() {
    let args = vec!["", "Alter", "Sabeh"];
    let expected_output = "Hello Alter Sabeh from Cargo !";
    let actual_output = print_greeting(&args);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}

/// # `print_date_test`
///
/// This function tests the `print_date` function.
#[test]
fn print_date_test() {
    let now = Local::now();
    let formatted_date = now.format("%B %d, %Y at %I:%M %p").to_string();
    let expected_output = format!("Today is {}", formatted_date);
    let actual_output = print_date();
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}

/// # `print_greet_test`
///
/// This function tests the `GREETING` constant.
#[test]
fn print_greet_test() {
    let expected_output = "Hello, Cargo's Here!";
    let actual_output = GREETING;
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_ne!(expected_output, actual_output, "{}", error_message);
}
