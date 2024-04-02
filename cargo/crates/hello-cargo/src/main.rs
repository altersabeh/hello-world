use cargo_hello::hello_world::print_greeting;
use std::env;

fn main() {
    let args: Vec<_> = env::args().collect();
    println!("{}", print_greeting(&args));
}
