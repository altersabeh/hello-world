use crate::goodbye_world::print_banner;

/// # `print_banner_message`
///
/// This function prints the banner message by calling the `printBanner`.
///
/// __Example:__
///
/// ```rust
/// use prog::cli_function::banner::print_banner_message;
/// print_banner_message();
/// ```
///
/// __Output:__
///
/// ```rust
/// "ASCII ART"
/// ```
pub fn print_banner_message() {
    println!("{}", print_banner());
}
