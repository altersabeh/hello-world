use cargo_hello::hello_world::*;
use chrono::Local;

#[test]
fn print_greeting_without_name_test() {
    let args = vec![];
    let expected_output = "Hello World from Cargo !".to_string();
    let actual_output = print_greeting(&args);
    assert_eq!(expected_output, actual_output);
}

#[test]
fn print_greeting_with_name_test() {
    let args = vec!["".into(), "Alter".into(), "Sabeh".into()];
    let expected_output = "Hello Alter Sabeh from Cargo !".to_string();
    let actual_output = print_greeting(&args);
    assert_eq!(expected_output, actual_output);
}

#[test]
fn print_date_test() {
    let now = Local::now();
    let formatted_date = now.format("%B %d, %Y at %I:%M %p").to_string();
    let expected_output = format!("Today is {}", formatted_date);
    let actual_output = print_date();
    assert_eq!(expected_output, actual_output);
}
