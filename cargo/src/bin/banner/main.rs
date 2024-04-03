extern crate cargo_hello;

use cargo_hello::cli_functions::banner::print_banner_message;

fn main() {
    println!("=============================================");
    print_banner_message();
    println!("=============================================");
}
