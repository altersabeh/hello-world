/// # `print_goodbye`
///
/// This function prints a goodbye message to the console. The message is
/// stylized and can be customized by passing arguments to the function.
///
/// __Arguments:__
///
/// * `args: &[&str]` - A slice of string arguments.
///
/// __Return:__
///
/// * `String` - A goodbye message.
///
/// __Example:__
///
/// ```rust
/// use prog::goodbye_world::print_goodbye;
/// println!("{}", print_goodbye(&["", "John", "Doe"]));
/// println!("{}", print_goodbye(&[]));
/// ```
///
/// __Output:__
///
/// ```rust
/// "Goodbye John Doe from Cargo !"
/// "Goodbye World from Cargo !"
/// ```
pub fn print_goodbye(args: &[&str]) -> String {
    if args.len() > 1 {
        format!("Goodbye {} from Cargo !", args[1..].join(" "))
    } else {
        "Goodbye World from Cargo !".to_string()
    }
}

/// # `printBanner`
///
/// This function returns a banner as a string. The banner is a multi-line string
/// that forms a stylized text when printed to the console.
///
/// __Return:__
///
/// `&'static str` - A banner as a string.
///
/// __Example:__
///
/// ```rust
/// use goodbye_world::print_banner;
/// println!("{}", print_banner());
/// ```
pub fn print_banner() -> &'static str {
    r#"
    ▄████▄  ▄▄▄      ██▀███   ▄████ ▒█████
   ▒██▀ ▀█ ▒████▄   ▓██ ▒ ██▒██▒ ▀█▒██▒  ██▒
   ▒▓█    ▄▒██  ▀█▄ ▓██ ░▄█ ▒██░▄▄▄▒██░  ██▒
   ▒▓▓▄ ▄██░██▄▄▄▄██▒██▀▀█▄ ░▓█  ██▒██   ██░
   ▒ ▓███▀ ░▓█   ▓██░██▓ ▒██░▒▓███▀░ ████▓▒░
   ░ ░▒ ▒  ░▒▒   ▓▒█░ ▒▓ ░▒▓░░▒   ▒░ ▒░▒░▒░
     ░  ▒    ▒   ▒▒ ░ ░▒ ░ ▒░ ░   ░  ░ ▒ ▒░
   ░         ░   ▒    ░░   ░░ ░   ░░ ░ ░ ▒
   ░ ░           ░  ░  ░          ░    ░ ░
   ░
"#
}
