    if [ ! -d ~/.oh-my-zsh ]; then
        echo INSTALLING OH-MY-ZSH
	echo TELL YES TO CHANGE TO SHELL AND THEN EXIT!
        sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed '/\s*env\s\s*zsh\s*/d')"

        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
else
	echo OH-MY-ZSH ALREADY INSTALLED
fi
