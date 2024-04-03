use chrono::Local;
use colored::Colorize;

use num_bigint::BigUint;
use numbers_utils::operations::fibonacci_utils::{fibonacci, fibonacci_random};

fn format_error_message(expected: &BigUint, actual: &BigUint) -> colored::ColoredString {
    format!(
        "\n\nTest run at: {}\nExpected : {}\nActual   : {}\n",
        Local::now().to_rfc3339(),
        expected,
        actual
    )
    .red()
}

#[test]
fn fibonacci_test() {
    let n = 100;
    let expected_output = BigUint::parse_bytes(b"354224848179261915075", 10).unwrap();
    let actual_output = fibonacci(n);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}

#[test]
fn fibonacci_random_test() {
    let result = fibonacci_random();
    let start_string = "Fib[";
    let error_message = format!("\nExpected: {}\n     Got: {}\n", start_string, result).red();
    assert!(result.starts_with(start_string), "{}", error_message,);
    assert!(result.contains(" = "));
}
