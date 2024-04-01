use std::collections::HashMap;

fn hello_translations() -> HashMap<&'static str, &'static str> {
    let mut map = HashMap::new();
    map.insert("French", "Bonjour");
    map.insert("Spanish", "Hola");
    map.insert("German", "Hallo");
    map.insert("Italian", "Ciao");
    map.insert("Dutch", "Hallo");
    map
}

fn greetings_from_translations() -> HashMap<&'static str, &'static str> {
    let mut map = HashMap::new();
    map.insert("French", "salutations de");
    map.insert("Spanish", "saludos desde");
    map.insert("German", "grüße aus");
    map.insert("Italian", "saluti da");
    map.insert("Dutch", "groeten uit");
    map
}

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
