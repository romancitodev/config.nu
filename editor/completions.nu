$env.config.completions.algorithm = "fuzzy"
$env.config.completions.sort = "smart"
$env.config.completions.case_sensitive = false
$env.config.completions.partial = true

let carapace_completer = {|spans: list<string>| 
  carapace $spans.0 nushell ...$spans
  | from json 
  | if ($in | default [] | where value =~ "^-.*ERR$" | is-empty) { $in } else { null }
}

let zoxide_completer = {|spans|
  $spans | skip 1 | zoxide query -l ...$in | lines | where {|x| $x != $env.PWD}
}

# External
$env.config.completions.external.enable = true
$env.config.completions.external.completer = {|spans: list<any>|
    match $spans.0 {
      z | zi | __zoxide_z | __zoxide_zi => $zoxide_completer,
      _ => $carapace_completer
    } | do $in $spans

}
