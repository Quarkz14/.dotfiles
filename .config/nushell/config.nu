# config.nu
#
# Installed by:
# version = "0.108.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

$env.config.buffer_editor = "nvim"

# git bare repo command
def --wrapped dot [...args] {
  /usr/bin/git --git-dir=($env.HOME + '/.dotfiles') --work-tree=($env.HOME) ...$args
}
alias conheadphones = bluetoothctl connect 14:3F:A6:A7:49:63
alias discheadphones = bluetoothctl disconnect 14:3F:A6:A7:49:63
alias lapmonitorOff = xrandr --output eDP --off
alias lapmonitorOn = xrandr --output eDP --auto
alias externalMonitor = xrandr --output HDMI-A-0 --auto --right-of eDP --primary
