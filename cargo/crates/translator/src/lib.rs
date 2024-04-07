use std::collections::HashMap;

/// # `hello_translations`
///
/// This function returns a translation of "Hello" in different languages.
///
/// __Return:__
///
/// * `HashMap<&'static str, &'static str>` - A hashmap of translations.
fn hello_translations() -> HashMap<&'static str, &'static str> {
    let mut map = HashMap::new();
    map.insert("French", "Bonjour");
    map.insert("Spanish", "Hola");
    map.insert("German", "Hallo");
    map.insert("Italian", "Ciao");
    map.insert("Dutch", "Hallo");
    map
}

/// # `hello_translations`
///
/// This function returns a translation of "Greeting from" in different languages.
///
/// __Return:__
///
/// * `HashMap<&'static str, &'static str>` - A hashmap of translations.
fn greetings_from_translations() -> HashMap<&'static str, &'static str> {
    let mut map = HashMap::new();
    map.insert("French", "salutations de");
    map.insert("Spanish", "saludos desde");
    map.insert("German", "grüße aus");
    map.insert("Italian", "saluti da");
    map.insert("Dutch", "groeten uit");
    map
}

/// # `translate`
///
/// This function translates a greeting in different languages.
///
/// __Arguments:__
///
/// * `language: &str` - The language to translate to.
/// * `name: &str` - The name to greet.
///
/// __Return:__
///
/// * `String` - The translated greeting.
///
/// __Example:__
/// ```rust
/// use translator::translate;
/// let name = "Alice";
/// let language = "French";
/// let greeting = translate(&language, &name);
/// println!("{}", greeting);
/// ```
///
/// __Output:__
/// ```txt
/// Bonjour Alice, salutations de Cargo !
/// ```
pub fn translate(language: &str, name: &str) -> String {
    let binding = hello_translations();
    let greeting = binding.get(language);
    let binding = greetings_from_translations();
    let greetings_from = binding.get(language);

    match (greeting, greetings_from) {
        (Some(g), Some(gf)) => format!("{} {}, {} Cargo !", g, name, gf),
        _ => format!("Hi {}, greetings from Cargo !", name),
    }
}
