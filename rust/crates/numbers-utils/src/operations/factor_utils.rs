use num_bigint::BigUint;
use num_traits::One;
use num_traits::ToPrimitive;
use num_traits::Zero;
use rand::Rng;

/// # `factor`
///
/// This function returns the factors of a number.
///
/// __Arguments:__
///
/// * `num: BigUint` - The number to find the factors of.
///
/// __Return:__
///
/// * `Vec<BigUint>` - The factors of the number `num`
///
/// __Example:__
///
/// ```rust
/// use numbers_utils::operations::factor_utils::factor;
/// let factors = factor(120u32.into());
/// println!("{:?}", factors);
/// ```
///
/// __Output:__'
///
/// ```rust
/// [1, 2, 3, 4, 5, 6, 8, 10, 12, 15, 20, 24, 30, 40, 60, 120]
/// ```
pub fn factor(num: BigUint) -> Vec<BigUint> {
    let mut factors = Vec::new();
    let max = num.clone().to_usize().unwrap_or(0);

    for i in 1..=max {
        let divisor = BigUint::from(i);
        if num.clone() % divisor.clone() == BigUint::zero() {
            factors.push(divisor);
        }
    }

    factors
}

/// # `factor_random`
///
/// This function generates a random number and returns its factors.
///
/// __Return:__
///
/// * `String` - The factors of the random number.
///
/// __Example:__
///
/// ```rust
/// use numbers_utils::operations::factor_utils::factor_random;
/// let factors = factor_random();
/// println!("{}", factors);
/// ```
///
/// __Output:__
///
/// ```rust
/// "Factor[50] = [1, 2, 5, 10, 25, 50]"
/// ```
pub fn factor_random() -> String {
    let mut rng = rand::thread_rng();
    let random_num = rng.gen_range(1..=25);

    let factors = factor((random_num as usize).into());

    format!("Factor[{}] = {:?}", random_num, factors)
}

/// # `prime_factor`
///
/// This function returns the prime factors of a number.
///
/// __Arguments:__
///
/// * `mut num: BigUint` - The number to find the prime factors of.
///
/// __Return:__
///
/// * `Vec<BigUint>` - The prime factors of the number `num`
///
/// __Example:__
///
/// ```rust
/// use numbers_utils::operations::factor_utils::prime_factor;
/// let prime_factors = prime_factor(120u32.into());
/// println!("{:?}", prime_factors);
/// ```
///
/// __Output:__
///
/// ```rust
/// "[2, 2, 2, 3, 5]"
/// ```
pub fn prime_factor(mut num: BigUint) -> Vec<BigUint> {
    if num == BigUint::zero() {
        return vec![];
    }

    let mut prime_factors = Vec::new();
    let two = BigUint::from(2u32);

    while &num % &two == BigUint::zero() {
        prime_factors.push(two.clone());
        num /= &two;
    }

    let mut i = 3u32;
    while BigUint::from(i * i) <= num {
        let divisor = BigUint::from(i);
        while &num % &divisor == BigUint::zero() {
            prime_factors.push(divisor.clone());
            num /= &divisor;
        }
        i += 2;
    }

    if num > BigUint::one() {
        prime_factors.push(num);
    }

    prime_factors
}

/// # `prime_factor_random`
///
/// This function generates a random number and returns its prime_factors.
///
/// __Return:__
///
/// * `String` - The prime factors of the random number.
///
/// __Example:__
///
/// ```rust
/// use numbers_utils::operations::prime_factor_utils::prime_factor_random;
/// let prime_factors = prime_factor_random();
/// println!("{}", prime_factors);
/// ```
///
/// __Output:__
///
/// ```rust
/// "PFactor[50] = [2, 5, 5]"
/// ```
pub fn prime_factor_random() -> String {
    let mut rng = rand::thread_rng();
    let random_num = rng.gen_range(1..=25);

    let prime_factors = prime_factor((random_num as usize).into());

    format!("PFactor[{}] = {:?}", random_num, prime_factors)
}
