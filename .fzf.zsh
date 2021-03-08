# Setup fzf
# ---------
if [[ ! "$PATH" == */home/nkotsev/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/nkotsev/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/nkotsev/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/nkotsev/.fzf/shell/key-bindings.zsh"
