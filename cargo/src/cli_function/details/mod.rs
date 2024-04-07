use crate::hello_world::print_date;

use std::io;
use std::io::Write;
use translator::translate;

/// # `get_user_name`
///
/// This function reads the user input for the name and returns it.
///
/// __Arguments:__
///
/// * `args: &[&str]` - The command line arguments.
///
/// __Return:__
///
/// * `String` - The name of the user.
///
/// __Example:__
/// ```rust
/// use prog::cli_function::details::get_user_name;
/// let name = get_user_name(&["John", "Doe"]);
/// ```
///
/// __Output:__
/// ```txt
/// John Doe
/// ```
fn get_user_name(args: &[&str]) -> String {
    if args.len() <= 1 {
        print!("Please enter your name : ");
        io::stdout().flush().unwrap();
        let mut name = String::new();
        io::stdin().read_line(&mut name).unwrap();
        name.trim().to_string()
    } else {
        args[1..].join(" ")
    }
}

/// # `get_user_language`
///
/// This function reads the user input for the language and returns it.
///
/// __Arguments:__
///
/// * ``
///
/// __Return:__
///
/// * `String` - The language of the user.
///
/// __Example:__
/// ```rust
/// use prog::cli_function::details::get_user_language;
/// let language = get_user_language();
/// ```
/// __Output:__
/// ```txt
/// Please enter your language : English
/// ```
fn get_user_language() -> String {
    print!("Please enter your language : ");
    io::stdout().flush().unwrap();
    let mut language = String::new();
    io::stdin().read_line(&mut language).unwrap();
    language.trim().to_string()
}

/// # `print_user_details`
///
/// This function prints the user details. It gets the user name and language by
/// calling the `get_user_name` and `get_user_language` functions. Then it
/// translates a message to the language provided by the user and prints it
/// using `translate` function. Finally, it prints the current date using
/// `print_date` function.
///
/// __Arguments:__
///
/// * `args: &[&str]` - The command line arguments.
///
/// __Example:__
/// ```rust
/// use prog::cli_function::details::print_user_details;
/// print_user_details(&["John", "Doe"]);
/// print_user_details(&[]);
/// ```
pub fn print_user_details(args: &[&str]) {
    let name = get_user_name(args);
    let language = get_user_language();
    println!("{}", translate(&language, &name));
    println!("{}", print_date());
}
