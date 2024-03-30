use cargo_hello::{print_date, print_greeting};

use chrono::{DateTime, Local};

#[test]
fn print_greeting_without_name_test() {
    let args: Vec<String> = vec![];
    let expected_output = "Hello World from Cargo !".to_string();
    assert_eq!(print_greeting(&args), expected_output);
}

#[test]
fn print_greeting_with_name_test() {
    let args: Vec<String> = vec![String::from("hello"), String::from("Alter Sabeh")];
    let expected_output = "Hi Alter Sabeh, greetings from Cargo !".to_string();
    assert_eq!(print_greeting(&args), expected_output);
}

#[test]
fn print_date_test() {
    let now: DateTime<Local> = Local::now();
    let formatted_date = now.format("%B %e, %Y %H:%M").to_string();
    let expected_output = format!("Today is {}", formatted_date);
    assert_eq!(print_date(), expected_output);
}
