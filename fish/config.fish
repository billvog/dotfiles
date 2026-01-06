# disable welcome message
set fish_greeting

# set language to english
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8

# set the default editor to nvim
set -x EDITOR vim

# set the config folder
set -x XDG_CONFIG_HOME $HOME/.config

# configure brew bundle
set -x HOMEBREW_BUNDLE_FILE $XDG_CONFIG_HOME/Brewfile
set -x HOMEBREW_BUNDLE_DUMP_NO_VSCODE true

# android sdk
set -gx ANDROID_SDK_ROOT "/Volumes/T7/Library/Android/sdk"
set -gx ANDROID_HOME "/Volumes/T7/Library/Android/sdk" #(Deprecated, but some programs still using it to locate SDK)
set -gx ANDROID_AVD_HOME "/Volumes/T7/Library/Android/avd"
set -gx PATH "$ANDROID_HOME/cmdline-tools/latest/bin" $PATH
set -gx PATH "$ANDROID_HOME/emulator" $PATH
set -gx PATH "$ANDROID_HOME/platform-tools" $PATH

# aliases
alias c="clear"
alias lg="lazygit"
alias ls="eza"
alias sail="./vendor/bin/sail"

# abbreviations
abbr -a dcu 'docker compose up -d'
abbr -a dcs 'docker compose stop'
abbr -a nr  'npm run'

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
nvm use node default --silent

# for compilers to find ruby
set -gx LDFLAGS "-L/opt/homebrew/opt/ruby/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/ruby/include"

# add brew binaries to path
fish_add_path /opt/homebrew/bin/
fish_add_path /opt/homebrew/opt/ruby/bin
fish_add_path ~/.local/share/gem/ruby/3.3.0/bin

