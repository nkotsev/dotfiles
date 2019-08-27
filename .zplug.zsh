source ~/.zplug/init.zsh

zplug "Tarrasch/zsh-autoenv"
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose

