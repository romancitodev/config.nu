# This is specific for my computer because I decided to move Rust to another disk
# You probably don't need it, so simply comment this.

$env.RUSTUP_HOME = "L:/rust/rustup"
$env.CARGO_HOME = "L:/rust/cargo"

$env.PATH = ($env.PATH | prepend "L:/rust/cargo/bin")
