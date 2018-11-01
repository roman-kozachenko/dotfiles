if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

shopt -s expand_aliases
if [ -f "$HOME/.aliases" ]; then
    . "$HOME/.aliases"
fi

if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/homebrew" ]; then
    PATH="$HOME/homebrew/bin:$PATH"
    LD_LIBRARY_PATH="$HOME/homebrew/lib:$LD_LIBRARY_PATH"
fi

set -o noclobber

export EDITOR="vim"
export PAGER="less"

mesg n || true
