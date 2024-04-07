use chrono::Local;
use colored::Colorize;
use num_bigint::BigUint;

use numbers_utils::operations::factor_utils::{
    factor, factor_random, prime_factor, prime_factor_random,
};

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
fn format_error_message(expected: &Vec<BigUint>, actual: &Vec<BigUint>) -> colored::ColoredString {
    format!(
        "\n\nTest run at: {}\nExpected : {:?}\nActual   : {:?}\n",
        Local::now().to_rfc3339(),
        expected,
        actual
    )
    .red()
}

/// # `factor_test`
///
/// This function tests the `factor` function.
#[test]
fn factor_test() {
    let number = BigUint::from(60u32);
    let expected_output = vec![
        BigUint::from(1u32),
        BigUint::from(2u32),
        BigUint::from(3u32),
        BigUint::from(4u32),
        BigUint::from(5u32),
        BigUint::from(6u32),
        BigUint::from(10u32),
        BigUint::from(12u32),
        BigUint::from(15u32),
        BigUint::from(20u32),
        BigUint::from(30u32),
        BigUint::from(60u32),
    ];
    let actual_output = factor(number);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(actual_output, expected_output, "{}", error_message);
}

/// # `factor_random_test`
///
/// This function tests the `factor_random` function.
#[test]
fn factor_random_test() {
    let result = factor_random();
    let start_string = "Factor[";
    let error_message = format!("\nExpected: {}\n     Got: {}\n", start_string, result).red();
    assert!(result.starts_with(start_string), "{}", error_message,);
    assert!(result.contains(" = "));
}

/// # `prime_factor_test`
///
/// This function tests the `prime_factor` function.
#[test]
fn prime_factor_test() {
    let number = BigUint::from(60u32);
    let expected_output = vec![
        BigUint::from(2u32),
        BigUint::from(2u32),
        BigUint::from(3u32),
        BigUint::from(5u32),
    ];
    let actual_output = prime_factor(number);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(actual_output, expected_output, "{:?}", error_message);
}

/// # `prime_factor_random_test`
///
/// This function tests the `prime_factor_random` function.
#[test]
fn prime_factor_random_test() {
    let result = prime_factor_random();
    let start_string = "PFactor[";
    let error_message = format!("\nExpected: {}\n     Got: {}\n", start_string, result).red();
    assert!(result.starts_with(start_string), "{}", error_message,);
    assert!(result.contains(" = "));
}
