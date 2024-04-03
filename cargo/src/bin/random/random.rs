use numbers_utils::{factorial_random, fibonacci_random};

pub(crate) fn print_random_numbers() {
    println!("Some random numbers : ");
    println!("{}", fibonacci_random());
    println!("{}", factorial_random());
}
