use numbers_utils::operations as mathematics;

use mathematics::factorial_utils::factorial_random;
use mathematics::fibonacci_utils::fibonacci_random;

pub fn print_random_numbers() {
    println!("Some random numbers : ");
    println!("{}", fibonacci_random());
    println!("{}", factorial_random());
}
