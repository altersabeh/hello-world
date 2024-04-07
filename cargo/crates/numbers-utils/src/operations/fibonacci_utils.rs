use num_bigint::BigUint;
use rand::Rng;

/// # `fibonacci`
///
/// This function calculates the nth Fibonacci number.
///
/// __Arguments:__
///
/// * `num: usize` - The nth Fibonacci number to calculate.
///
/// __Return:__
///
/// * `BigUint` - The nth Fibonacci number.
///
/// __Example:__
/// ```rust
/// use numbers_utils::operations::fibonacci_utils::fibonacci;
/// let fib = fibonacci(10);
/// println!("Fib[10] = {}", fib);
/// ```
///
/// __Output:__
/// ```txt
/// Fib[10] = 55
/// ```
pub fn fibonacci(num: usize) -> BigUint {
    let mut first_term = BigUint::from(0u8);
    let mut second_term = BigUint::from(1u8);

    for _ in 0..num {
        let temp = first_term.clone();
        first_term = second_term.clone();
        second_term += temp;
    }

    first_term
}

/// # `fibonacci_random`
///
/// This function generates a random number and returns its Fibonacci number.
///
/// __Return:__
///
/// * `String` - The Fibonacci number of the random number.
///
/// __Example:__
/// ```rust
/// use numbers_utils::operations::fibonacci_utils::fibonacci_random;
/// let fib = fibonacci_random();
/// println!("{}", fib);
/// ```
///
/// __Output:__
/// ```txt
/// Fib[10] = 55
/// ```
pub fn fibonacci_random() -> String {
    let mut rng = rand::thread_rng();
    let random_num: u32 = rng.gen_range(1..=50);

    let fib = fibonacci(random_num as usize);

    format!("Fib[{}] = {}", random_num, fib)
}
