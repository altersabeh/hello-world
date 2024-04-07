use num_bigint::BigUint;
use num_bigint::ToBigUint;
use rand::Rng;

/// # `factorial`
///
/// This function calculates the factorial of a number.
///
/// __Arguments:__
///
/// * `num: usize` - The number to calculate the factorial of.
///
/// __Return:__
///
/// * `BigUint` - The factorial of the number `num`.
///
/// __Example:__
/// ```rust
/// use numbers_utils::operations::factorial_utils::factorial;
/// let fact = factorial(5);
/// println!("5! = {}", fact);
/// ```
///
/// __Output:__
/// ```txt
/// 5! = 120
/// ```
pub fn factorial(num: usize) -> BigUint {
    let mut fact = BigUint::from(1u8);

    for i in 1..=num {
        fact *= i.to_biguint().unwrap();
    }

    fact
}

/// # `factorial_random`
///
/// This function generates a random number and returns its factorial.
///
/// __Return:__
///
/// * `String` - The factorial of the random number.
///
/// __Example:__
/// ```rust
/// use numbers_utils::operations::factorial_utils::factorial_random;
/// let fact = factorial_random();
/// println!("{}", fact);
/// ```
///
/// __Output:__
/// ```txt
/// Fact[5] = 120
/// ```
pub fn factorial_random() -> String {
    let mut rng = rand::thread_rng();
    let random_num = rng.gen_range(1..=25);

    let fact = factorial(random_num as usize);

    format!("Fact[{}] = {}", random_num, fact)
}
