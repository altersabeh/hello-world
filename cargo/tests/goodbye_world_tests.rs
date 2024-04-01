use cargo_hello::goodbye_world::{print_banner, print_goodbye};

#[test]
fn print_goodbye_without_name_test() {
    let args = vec![];
    let expected_output = "Goodbye World from Cargo !".to_string();
    let actual_output = print_goodbye(&args);
    assert_eq!(expected_output, actual_output);
}

#[test]
fn print_goodbye_with_name_test() {
    let args = vec!["".into(), "Alter".into(), "Sabeh".into()];
    let expected_output = "Goodbye Alter Sabeh from Cargo !".to_string();
    let actual_output = print_goodbye(&args);
    assert_eq!(expected_output, actual_output);
}

#[test]
fn print_banner_test() {
    let expected_output = r#"
▄████▄   ▄▄▄       ██▀███    ▄████  ▒█████
▒██▀ ▀█  ▒████▄    ▓██ ▒ ██▒ ██▒ ▀█▒▒██▒  ██▒
▒▓█    ▄ ▒██  ▀█▄  ▓██ ░▄█ ▒▒██░▄▄▄░▒██░  ██▒
▒▓▓▄ ▄██▒░██▄▄▄▄██ ▒██▀▀█▄  ░▓█  ██▓▒██   ██░
▒ ▓███▀ ░ ▓█   ▓██▒░██▓ ▒██▒░▒▓███▀▒░ ████▓▒░
░ ░▒ ▒  ░ ▒▒   ▓▒█░░ ▒▓ ░▒▓░ ░▒   ▒ ░ ▒░▒░▒░
░  ▒     ▒   ▒▒ ░  ░▒ ░ ▒░  ░   ░   ░ ▒ ▒░
░          ░   ▒     ░░   ░ ░ ░   ░ ░ ░ ░ ▒
░ ░            ░  ░   ░           ░     ░ ░
░
"#
    .to_string();
    let actual_output = print_banner();
    assert_eq!(expected_output, actual_output);
}
