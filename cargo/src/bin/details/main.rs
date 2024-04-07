use std::env;

use prog::cli_function::details::print_user_details;

/// # `main`
///
/// This function is the entry point of the application.
///
/// __Arguments:__
///
/// * `args: Vec<String>` - The command line arguments.
fn main() {
    let args: Vec<_> = env::args().collect();
    println!("=============================================");
    print_user_details(&args.iter().map(AsRef::as_ref).collect::<Vec<_>>());
    println!("=============================================");
}
