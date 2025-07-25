$env.config.keybindings =  (
  [{
    name: reload_config,
    modifier: none,
    keycode: f5,
    mode: [emacs vi_normal vi_insert],
    event: {
      send: executehostcommand # this shouldn't be exposed but this is a tricky way.
      cmd : "reload --from keys" # imported already from ~/AppData/Roaming/nushell/utils/mod.nu
    }
}])
