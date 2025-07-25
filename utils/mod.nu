# Utility command to reload nushell configuration
export def reload [
  # context of function calling
  --from (-f): string = "manual"
]: nothing -> nothing {
  if ($from | is-not-empty) {
    print $'Reloading from ($from)';
  }
  exec nu;
}

# Alias command to `reload` utility command
export alias rl = reload
