use num_bigint::BigUint;
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
