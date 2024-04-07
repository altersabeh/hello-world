use chrono::Local;
use colored::Colorize;

use num_bigint::BigUint;
use numbers_utils::operations::factorial_utils::{factorial, factorial_random};

/// # `format_error_message`
///
/// This function formats the error message for the test cases.
///
/// __Arguments:__
///
/// * `expected: BigUint` - The expected output.
/// * `actual: BigUint` - The actual output.
///
/// __Return:__
///
/// * `colored::ColoredString` - The formatted error message.
fn format_error_message(expected: &BigUint, actual: &BigUint) -> colored::ColoredString {
    format!(
        "\n\nTest run at: {}\nExpected : {}\nActual   : {}\n",
        Local::now().to_rfc3339(),
        expected,
        actual
    )
    .red()
}

/// # `factorial_test`
///
/// This function tests the `factorial` function.
#[test]
fn factorial_test() {
    let n = 75;
    let expected_output = BigUint::parse_bytes(b"24809140811395398091946477116594033660926243886570122837795894512655842677572867409443815424000000000000000000", 10).unwrap();
    let actual_output = factorial(n);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}

/// # `factorial_random_test`
///
/// This function tests the `factorial_random` function.
#[test]
fn factor_random_test() {
    let result = factorial_random();
    let start_string = "Fact[";
    let error_message = format!("\nExpected: {}\n     Got: {}\n", start_string, result).red();
    assert!(result.starts_with(start_string), "{}", error_message,);
    assert!(result.contains(" = "));
}
