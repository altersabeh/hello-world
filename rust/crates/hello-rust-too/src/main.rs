/// `HelloWorldToo` is a struct that represents a greeting in a specific
/// language.
///
/// It has two fields: `greeting` and `language`. `greeting` is a `String` that
/// holds the greeting message. `language` is a `&'static str` that holds the
/// language of the greeting.
struct HelloWorldToo {
    greeting: String,
    language: &'static str,
}

impl HelloWorldToo {
    /// `LANGUAGE` is a constant that represents the default language of the
    /// greeting.
    const LANGUAGE: &'static str = "Rust";

    /// `new` is a constructor that creates a new `HelloWorldToo` instance.
    ///
    /// It takes a `String` as an argument to initialize the `greeting` field.
    /// The `language` field is set to `LANGUAGE` by default.
    fn new(greeting: String) -> HelloWorldToo {
        HelloWorldToo {
            greeting,
            language: Self::LANGUAGE,
        }
    }

    /// `display_greeting` is a method that prints the greeting and the language
    /// to the console.
    fn display_greeting(&self) {
        println!("{} in {} !", self.greeting, self.language);
    }
}

/// `main` is the entry point of the program.
///
/// It creates a `HelloWorldToo` instance with the greeting "Hello, World!" and
/// displays the greeting.
fn main() {
    let message = String::from("Hello, World!");
    let hello_world = HelloWorldToo::new(message);
    hello_world.display_greeting();
}
