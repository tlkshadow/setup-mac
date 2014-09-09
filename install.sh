#!/bin/sh

if which xcodebuild >/dev/null; then
    
	while :
	do 
		# accept license for xcode
		sudo xcodebuild -license
		# homebrew
		sudo ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

		# node
		sudo brew install node
		# git
		sudo brew install git
		sudo brew install git-flow
		# Oh my ZSH
		curl -L http://install.ohmyz.sh | sh
		cp ~/.zshrc ~/.zshrc.orig
		cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
		sudo chsh -s /bin/zsh
		# npm
		curl -L https://npmjs.org/install.sh | sh
		# lessc
		sudo npm install -g less

		echo --------------------------------------------------
		echo "Finished install of all needed commandline tools"
		echo --------------------------------------------------

		break;
	done;

else
	echo --------------------------------------------------
    echo "First you have to install XCODE."
    echo "You can find it in the Appstore"
    echo --------------------------------------------------
fi
