use num_bigint::BigUint;
use num_traits::One;
use num_traits::ToPrimitive;
use num_traits::Zero;
use rand::Rng;

pub fn factor(n: BigUint) -> Vec<BigUint> {
    let mut factors = Vec::new();
    let max = n.clone().to_usize().unwrap_or(0);

    for i in 1..=max {
        let divisor = BigUint::from(i);
        if n.clone() % divisor.clone() == BigUint::zero() {
            factors.push(divisor);
        }
    }

    factors
}

pub fn factor_random() -> String {
    let mut rng = rand::thread_rng();
    let random_num = rng.gen_range(1..=25);

    let factors = factor((random_num as usize).into());

    format!("Factor[{}] = {:?}", random_num, factors)
}

pub fn prime_factor(mut n: BigUint) -> Vec<BigUint> {
    if n == BigUint::zero() {
        return vec![];
    }

    let mut prime_factors = Vec::new();
    let two = BigUint::from(2u32);

    while &n % &two == BigUint::zero() {
        prime_factors.push(two.clone());
        n /= &two;
    }

    let mut i = 3u32;
    while BigUint::from(i * i) <= n {
        let divisor = BigUint::from(i);
        while &n % &divisor == BigUint::zero() {
            prime_factors.push(divisor.clone());
            n /= &divisor;
        }
        i += 2;
    }

    if n > BigUint::one() {
        prime_factors.push(n);
    }

    prime_factors
}

pub fn prime_factor_random() -> String {
    let mut rng = rand::thread_rng();
    let random_num = rng.gen_range(1..=25);

    let prime_factors = prime_factor((random_num as usize).into());

    format!("PFactor[{}] = {:?}", random_num, prime_factors)
}
