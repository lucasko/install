GITHUB_DIR=$$HOME/code/src/github.com

install_oh_my_zah:
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

install_fasd:
	rm -rf $(GITHUB_DIR)/fasd.git
	git clone  https://github.com/clvv/fasd   $(GITHUB_DIR)/fasd.git
	cd  $(GITHUB_DIR)/fasd.git && make install
	eval "$$(fasd --init auto)" && fasd --init

install_fzf:
	rm -rf $(GITHUB_DIR)/fzf.git
	rm -rf $$HOME/.fzf.bash
	rm -rf $$HOME/.fzf.zsh
	git clone --depth 1 https://github.com/junegunn/fzf.git $(GITHUB_DIR)/fzf.git
	$(GITHUB_DIR)/fzf.git/install --all

install_brew:
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

install_aws_vault:
    brew cask install aws-vault

install_brew_list:
	brew update
	brew install watch
	brew install fzf
	brew install zsh

install_tfswitch:
    brew install tfswitch
# install_git_secret:
#     brew install git-secret
#setup idea
#https://www.jetbrains.com/help/idea/working-with-the-ide-features-from-command-line.html#standalone
##!/bin/sh
#open -na "IntelliJ IDEA CE.app" --args "$@"