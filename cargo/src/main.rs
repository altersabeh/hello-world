// Hello World in Cargo !

use cargo_hello::{print_date, print_greeting};

use std::env;

fn main() {
    let args: Vec<_> = env::args().collect();
    println!("{}", print_greeting(&args));
    println!("{}", print_date());
}
