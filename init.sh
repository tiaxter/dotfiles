# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add homebrew to zshrc
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/tiaxter/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"



# install programs
brew install helix exa fish ffmpeg neovim pfetch rust fzf scrcpy bat

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# install fvm
brew tap leoafarias/fvm
brew install fvm

# change default shell
sudo chsh -s "$(which fish)"
chsh -s "$(which fish)"

# setup fish stuff
curl -L https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > $HOME/omf-install
fish $HOME/omf-install --noninteractive
rm -rf $HOME/omf-install

curl -sL https://git.io/fisher | source $HOME/.config/fish/config.fish 
fish -c "fisher install jorgebucaran/fisher"

# install theme
fish -c "omf install robbyrussell"

# install fish plugins
fish -c "fisher install jorgebucaran/nvm.fish"

# execute only on mac os
if [ "$(uname -s)" == "Darwin" ]; then
  # Remove Mac keyboard input delay
  defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
  defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
  defaults write -g ApplePressAndHoldEnabled -bool false

  # install mac os programs only
  brew install ntfs-3g raycast warp

  # warp themes setup
  mkdir -p $HOME/.warp/themes/
  curl --output-dir ~/.warp/themes -LO https://raw.githubusercontent.com/catppuccin/warp/main/dist/catppuccin_frappe.yml
fi

# create symbolic links
rm -rf $HOME/.config/fish && ln -s $HOME/dotfiles/fish $HOME/.config
rm -rf $HOME/.config/helix && ln -s $HOME/dotfiles/helix $HOME/.config
rm -rf $HOME/.config/nvim && ln -s $HOME/dotfiles/nvim $HOME/.config

# install commitizen
fish -c "nvm install latest"
fish -c "set -gx nvm_default_version latest"
fish -c "npm install commitizen cz-conventional-changelog -g"
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc


