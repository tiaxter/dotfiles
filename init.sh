# Remove Mac keyboard input delay
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
defaults write -g ApplePressAndHoldEnabled -bool false

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add homebrew to zshrc
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# TODO: install programs from Brewfile
# programs to install: helix ffmpeg fish bat iina eza httpie fnm stow jq font-hack-nerd-font font-monocraft font-awesome-terminal-fonts rclone

# Change default shell
echo "$(which fish)" | sudo tee -a /etc/shells
sudo chsh -s "$(which fish)"

# Install Oh My Fish
curl -L https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > ~/omf-install
fish ~/omf-install --noninteractive
rm -rf ~/omf-install

# Install RobbyRussell Theme
fish -c "omf install robbyrussell"

# Install Catppuccin Frappe Theme on Warp terminal
mkdir -p ~/.warp/themes/
curl --output-dir ~/.warp/themes -LO https://raw.githubusercontent.com/catppuccin/warp/main/dist/catppuccin_frappe.yml


# TODO: Create symbolic links using stow
