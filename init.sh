# Remove Mac keyboard input delay
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
defaults write -g ApplePressAndHoldEnabled -bool false

# Enable auto-show upper menu bar
defaults write NSGlobalDomain _HIHideMenuBar -bool true

# Show battery percentage in the menu bar
defaults write com.apple.menuextra.battery ShowPercent YES

# TODO: add Volume icon to the main bar

# Set Dock height
defaults write com.apple.dock tilesize -integer 45

# Set Dock auto-show
defaults write com.apple.dock "autohide" -bool "true"

# Hide recent app in the Dock
defaults write com.apple.dock "show-recents" -bool "false"

# Show file extension in Finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

# Show hidden file in Finder
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"

# Show path bar in Finder
defaults write com.apple.finder "ShowPathbar" -bool "true"

# Search will search files in the current folder
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

# Show folder icons in the Finder title bar
defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "true"

# Set sidebar icons size in Finder
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "1"

# Disable spaces rearrange by application usage
defaults write com.apple.dock "mru-spaces" -bool "false"

# Save screenshot to the clipboard
defaults write com.apple.screencapture target -string "clipboard"

# Show battery percentage on menu bar
defaults -currentHost write com.apple.controlcenter.plist BatteryShowPercentage -bool true

# TODO: aggiungere che Opt+A e Opt+S portano allo spazio prima e dopo
# TODO: questo é il valore che deve essere inserito all'interno del file ~/Library/Preferences/com.apple.symbolichotkeys.plist tramite defaults write
# TODO: devo capire come si scrive questo popo di roba (questo é per Opt+A)
# 79 =         {
#     enabled = 0;
#     value =             {
#         parameters =                 (
#             97,
#             0,
#             524288
#         );
#         type = standard;
#     };
# };
# TODO: questo é per Opt+S
# 81 =         {
#     enabled = 1;
#     value =             {
#         parameters =                 (
#             115,
#             1,
#             524288
#         );
#         type = standard;
#     };
# };

 

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add homebrew to zshrc
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install programs from Brewfile
brew bundle --file=./Brewfile

# Change default shell
echo "$(which fish)" | sudo tee -a /etc/shells
chsh -s "$(which fish)"
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

# Remember to setup in Raycast the shortcut for the Clipboard History
osascript -e 'display notification "Setup Raycast Clibopard History Keystroke, and Git Conventional Comment extension" with title "Remember to setup"'


# Create symbolic links using stow
stow .

# Remember to install Slack and Teams on work machine
echo "If you're using Work Machine remember to install Slack and Teams, using brew!"
