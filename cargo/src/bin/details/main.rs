mod details;

use details::print_user_details;
use std::env;

fn main() {
    let args: Vec<_> = env::args().collect();
    println!("=============================================");
    print_user_details(&args);
    println!("=============================================");
}
