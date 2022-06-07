curl -sSf https://sh.rustup.rs | sh -s -- -y
source ~/.cargo/env

if [[ $(cat /etc/os-release) == *"ubuntu"* ]]; then
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
    sudo apt update
    sudo apt upgrade -y
fi
if [[ $OSTYPE == *"darwin"* ]]; then
    export NONINTERACTIVE=1
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update
    brew upgrade
fi

if [[ $(cat /etc/os-release) == *"ubuntu"* ]]; then
    sudo apt install openjdk-17-jdk fish aria2 httpie neovim bat gh
    cargo install exa
    cargo install just
fi
if [[ $OSTYPE == *"darwin"* ]]; then
    brew install openjdk fish aria2 exa httpie just neovim bat gh
fi

sudo chsh -s $(which fish)
cp ./files/config.fish ~/.config/fish/config.fish
