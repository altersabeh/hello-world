#!/bin/bash

# Directories
cargo_dir="cargo"
gradle_dir="gradle"
dotnet_dir="dotnet"

# Commands
cargo_commands=(
    "cargo build"
    "cargo test"
    "cargo run"
    "cargo clippy"
    "cargo package"
    "cargo clean"
)

dotnet_commands=(
    "dotnet build"
    "dotnet test"
    "dotnet run --project src"
    "dotnet format"
    "dotnet format"
    "dotnet pack"
    "dotnet clean"
)

gradle_commands=(
    "gradle assemble"
    "gradle test"
    "gradle run"
    "gradle check"
    "gradle jar"
    "gradle clean"
)

# Get the action and language from command-line arguments
action="$1"
language="$2"

# Check if the arguments are provided
if [ -z "$action" ] || [ -z "$language" ]; then
    echo "Usage: $0 <action> <language>"
    echo "Actions: build, test, run, lint, package"
    exit 1
fi

# Set the language directory
case "$language" in
cargo)
    lang_dir="$cargo_dir"
    commands=("${cargo_commands[@]}")
    ;;
gradle)
    lang_dir="$gradle_dir"
    commands=("${gradle_commands[@]}")
    ;;
dotnet)
    lang_dir="$dotnet_dir"
    commands=("${dotnet_commands[@]}")
    ;;
*)
    echo "Unsupported language: $language"
    exit 1
    ;;
esac

# Execute the corresponding command based on the action
case "$action" in
build)
    command_index=0
    ;;
test)
    command_index=1
    ;;
run)
    command_index=2
    ;;
format)
    command_index=3
    ;;
lint)
    command_index=4
    ;;
package)
    command_index=5
    ;;
clean)
    command_index=6
    ;;
*)
    echo "Invalid action: $action"
    exit 1
    ;;
esac

command="${commands[$command_index]}"
echo "Running command: $command in directory: $lang_dir"
cd "$lang_dir" || exit
eval "$command"
