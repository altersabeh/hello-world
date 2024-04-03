use num_bigint::BigUint;
use num_bigint::ToBigUint;
use rand::Rng;

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
