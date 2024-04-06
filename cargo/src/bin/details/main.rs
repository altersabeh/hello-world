use std::env;

use cargo_hello::cli_functions::details::print_user_details;

fn main() {
    let args: Vec<_> = env::args().collect();
    println!("=============================================");
    print_user_details(&args.iter().map(AsRef::as_ref).collect::<Vec<_>>());
    println!("=============================================");
}
