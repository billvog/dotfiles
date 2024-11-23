# disable welcome message
set fish_greeting

# set language to english
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8

# set the default editor to nvim
set -x EDITOR nvim

# set the config folder
set -x XDG_CONFIG_HOME $HOME/.config

# my aliases
alias c="clear"
alias d="docker"
alias nr="npm run"
alias lg="lazygit"
alias ls="eza --icons always"
alias sail="./vendor/bin/sail"

# pnpm
set -gx PNPM_HOME "/Users/$USER/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

# nvm (node version manager) configuration
function nvm
  bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

# for compilers to find ruby
set -gx LDFLAGS "-L/opt/homebrew/opt/ruby/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/ruby/include"

# add brew binaries to path
fish_add_path /opt/homebrew/bin/
fish_add_path /opt/homebrew/opt/ruby/bin
fish_add_path ~/.local/share/gem/ruby/3.3.0/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
end

