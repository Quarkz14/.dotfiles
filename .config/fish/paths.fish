# Start with system path
# Retrieve it from getconf, otherwise it's just current $PATH

set -U fish_user_paths /usr/local/bin $fish_user_paths

function prepend-path
    set -U fish_user_paths $argv $fish_user_paths
end

# Prepend new items to path (if directory exists)
prepend-path "/bin"
prepend-path "/usr/bin"
prepend-path "/snap/bin"
prepend-path "/usr/local/bin"
prepend-path "$HOME/bin"
prepend-path "/sbin"
prepend-path "/usr/sbin"
prepend-path "/usr/local/sbin"
prepend-path "/usr/local/opt/asdf/shims"
prepend-path "/usr/local/opt/asdf/bin"
prepend-path "$GOPATH/bin"
prepend-path "$HOME/go/bin"
prepend-path "/user/local/go/bin"
prepend-path "$HOME/.local/bin"
prepend-path "$HOME/.cargo/bin"
