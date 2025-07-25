$env.RUSTUP_HOME = "L:/rust/rustup"
$env.CARGO_HOME = "L:/rust/cargo"

$env.PATH = ($env.PATH | prepend "L:/rust/cargo/bin")
