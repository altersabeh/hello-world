// Hello World in Cargo !

use cargo_hello::hello_world::*;
use cargo_hello::numbers_lib::*;

use std::env;

fn main() {
    let args: Vec<_> = env::args().collect();
    println!("{}", print_greeting(&args));
    println!("{}", print_date());
    println!("Some random numbers:");
    println!("{}", fibonacci_random());
    println!("{}", factorial_random());
}
