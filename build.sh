#!/bin/bash

# Directories
rust_dir="rust"


# Commands
rust_commands=(
  "cargo build"
  "cargo test"
  "cargo run"
  "cargo clippy"
  "cargo package"
  "cargo clean"
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
rust)
  lang_dir="$rust_dir"
  commands=("${rust_commands[@]}")
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
lint)
  command_index=3
  ;;
package)
  command_index=4
  ;;
clean)
  command_index=5
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
