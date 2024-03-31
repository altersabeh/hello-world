use chrono::{DateTime, Local};

pub fn print_greeting(args: &[String]) -> String {
    if args.len() > 1 {
        format!("Hi {}, greetings from Cargo !", args[1..].join(" "))
    } else {
        "Hello World from Cargo !".to_string()
    }
}

pub fn print_date() -> String {
    let current_date: DateTime<Local> = Local::now();
    let layout: &str = "%B %e, %Y at %I:%M %p";
    let formatted_date: String = current_date.format(layout).to_string();
    format!("Today is {}", formatted_date)
}
