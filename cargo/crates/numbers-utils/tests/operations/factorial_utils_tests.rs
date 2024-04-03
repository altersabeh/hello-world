use chrono::Local;
use colored::Colorize;
use num_bigint::BigUint;
use numbers_utils::operations::factorial_utils::{factorial, factorial_random};

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
fn factorial_test() {
    let n = 75;
    let expected_output = BigUint::parse_bytes(b"24809140811395398091946477116594033660926243886570122837795894512655842677572867409443815424000000000000000000", 10).unwrap();
    let actual_output = factorial(n);
    let error_message = format_error_message(&expected_output, &actual_output);
    assert_eq!(expected_output, actual_output, "{}", error_message);
}

#[test]
fn test_factor_random() {
    let result = factorial_random();
    assert!(result.starts_with("Fact["));
    assert!(result.contains(" = "));
}
