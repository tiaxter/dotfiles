# Disable greetings
set fish_greeting

# Pfetch config
set -gx PF_INFO "title os host kernel uptime memory shell editor palette"

# Exa alias
alias ls="exa --icons"
alias ll="exa --icons -lah"

# Remove Mac keyboard input delay
# defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
# defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
# defaults write -g ApplePressAndHoldEnabled -bool false

# FVM config
fish_add_path ~/fvm/default/bin

# NVM config
set -gx NVM_DIR (brew --prefix nvm)
nvm use default --silent

# Rust config
fish_add_path ~/.cargo/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
    pfetch
end


# Bun
set -Ux BUN_INSTALL "/Users/tiaxter/.bun"
set -px --path PATH "/Users/tiaxter/.bun/bin"

