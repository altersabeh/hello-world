#!/usr/bin/env pwsh

# Define directories
$cargo_dir = "cargo"

# Define commands
$cargo_commands = @(
  "cargo build",
  "cargo test",
  "cargo run",
  "cargo clippy",
  "cargo package",
  "cargo clean"
)

# Get the action and language from command-line arguments
$action = $args[0]
$language = $args[1]

# Check if the arguments are provided
if (-not $action -or -not $language) {
  Write-Host "Usage: ./build.ps1 <action> <language>"
  Write-Host "Actions: build, test, run, lint, package"
  Write-Host "Build Tool: cargo"
  return
}

# Set the language directory and commands
switch ($language) {
  "cargo" {
    $lang_dir = $cargo_dir
    $commands = $cargo_commands
  }
  default {
    Write-Host "Unsupported language: $language"
    return
  }
}

# Execute the corresponding command based on the action
switch ($action) {
  "build" { $command_index = 0 }
  "test" { $command_index = 1 }
  "run" { $command_index = 2 }
  "lint" { $command_index = 3 }
  "package" { $command_index = 4 }
  "clean" { $command_index = 5 }
  default {
    Write-Host "Invalid action: $action"
    return
  }
}

$command = $commands[$command_index]
Write-Host "Running command: $command in directory: $lang_dir"
Push-Location $lang_dir
Invoke-Expression $command
Pop-Location