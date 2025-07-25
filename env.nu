# env.nu
#
# Installed by:
# version = "0.105.1"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.

# baner config
$env.config.show_banner = false
$env.config.render_right_prompt_on_last_line = true

$env.GH_CONFIG_DIR = $"($env.APPDATA)/Github CLI"

source rust/env.nu; # load the rust env configuration
source editor/init.nu; # load editor configuration
source history/init.nu; # load history configuration
source python/env.nu; # load python venv configuration
source fnm/env.nu; # load fnm configuration
source utils/env.nu; # load env utils

use ./carapace ['start_env'];
use ./zoxide ['zoxide_env'];

(start_env);
(zoxide_env);
