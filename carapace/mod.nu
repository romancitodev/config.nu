export def "start_env" [] {
    mkdir ~/.cache/carapace
    ^carapace _carapace nushell | save --force ~/.cache/carapace/init.nu
}

export def "start_cfg" [] {
    if not ('~/.cache/carapace/init.nu' | path exists) {
        return;
    }
    source ~/.cache/carapace/init.nu
}
