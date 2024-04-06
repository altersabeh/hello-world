pub fn print_goodbye(args: &[&str]) -> String {
    if args.len() > 1 {
        format!("Goodbye {} from Cargo !", args[1..].join(" "))
    } else {
        "Goodbye World from Cargo !".to_string()
    }
}

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
