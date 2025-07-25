$env.config.hooks.env_change.PWD = (
  $env.config.hooks.env_change.PWD? | append {
    condition: {|_, src| ($src | path join ".venv" | path exists) and (overlay list | find "activate" | is-empty )}
    code: "overlay use .venv/scripts/activate.nu"
  }
)
