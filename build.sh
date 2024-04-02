#!/bin/bash

# Directories
cabal_dir="cabal"
cargo_dir="cargo"
dotnet_dir="dotnet"
gradle_dir="gradle"
swiftpm_dir="swiftpm"

# Commands
cabal_commands=(
    "cabal build all"
    "cabal test all"
    "cabal run cabal-hello"
    "fourmolu -i . ; cabal format"
    "hlint ."
    "cabal sdist"
    "cabal clean"
)

cargo_commands=(
    "cargo build --all"
    "cargo test --all --no-fail-fast"
    "cargo run"
    "cargo fmt"
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
    "gradle test --continue"
    "gradle app:run -Dorg.gradle.console=plain"
    "gradle ktlintFormat"
    "gradle ktlintCheck"
    "gradle jar"
    "gradle clean"
)

swiftpm_commands=(
    "swift build"
    "swift test"
    "swift run"
    "swift package swiftformat"
    ""
    "swift package"
    "swift package clean"
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
cabal)
    lang_dir="$cabal_dir"
    commands=("${cabal_commands[@]}")
    ;;
cargo)
    lang_dir="$cargo_dir"
    commands=("${cargo_commands[@]}")
    ;;
dotnet)
    lang_dir="$dotnet_dir"
    commands=("${dotnet_commands[@]}")
    ;;
gradle)
    lang_dir="$gradle_dir"
    commands=("${gradle_commands[@]}")
    ;;
swiftpm_commands)
    lang_dir="$swiftpm_dir"
    commands=("${swiftpm_commands[@]}")
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
format | fmt)
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
