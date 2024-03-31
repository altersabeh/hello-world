use num_bigint::BigUint;
use num_bigint::ToBigUint;
use rand::Rng;

pub fn fibonacci(n: usize) -> BigUint {
    let mut first_term = BigUint::from(0u8);
    let mut second_term = BigUint::from(1u8);

    for _ in 0..n {
        let temp = first_term.clone();
        first_term = second_term.clone();
        second_term += temp;
    }

    first_term
}

pub fn fibonacci_random() -> String {
    let mut rng = rand::thread_rng();
    let random_num: u32 = rng.gen_range(1..=50);

    let fib = fibonacci(random_num as usize);

    format!("Fib[{}] = {}", random_num, fib)
}

pub fn factorial(n: usize) -> BigUint {
    let mut fact = BigUint::from(1u8);

    for i in 1..=n {
        fact *= i.to_biguint().unwrap();
    }

    fact
}

pub fn factorial_random() -> String {
    let mut rng = rand::thread_rng();
    let random_num = rng.gen_range(1..=25);

    let fact = factorial(random_num as usize);

    format!("Fact[{}] = {}", random_num, fact)
}
