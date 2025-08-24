#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: init.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-15 14:01:19
# @last_modified_date: 2022-09-16 19:49:09
# @brief: TODO
#---***********************************************---

# Install oh-my-zsh
OH_MY_ZSH_PATH="$HOME/.oh-my-zsh"
if [ -d "$OH_MY_ZSH_PATH" ]; then
    echo "Oh-my-zsh Installed"
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "Oh-my-zsh Downloaded & Installed"
fi

# Install brew
if command -v brew &> /dev/null; then
    echo "Homebrew Installed"
else
    echo "Homebrew has not been installed, Downloading & Installing ...."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    if command -v brew &> /dev/null; then
        echo "Homebrew installed"
    else
        echo "Homebrew installing failed"
        exit 1
    fi
fi

# Install macos dev-tools install
xcode-select --install

# Update Brew source
# 替换各个源
#git -C "$(brew --repo)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
#git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git
#git -C "$(brew --repo homebrew/cask)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask.git

# zsh 替换 brew bintray 镜像
#echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles' >> ~/.zshrc
#source ~/.zshrc

#bash 替换 brew bintray 镜像
#echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles' >> ~/.bash_profile
#source ~/.bash_profile

# 刷新源
$ brew update

# Install git cmake python3 ninja python
set -xv
brew install git cmake python3 ninja pipx fzf vim
set +xv

# Install qt-creator
set -xv
brew install qt-creator
set +xv

# Install colcon
pipx install colcon-common-extensions
