if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

if [ -f "$HOME/.aliases" ]; then
    shopt -s expand_aliases
    . "$HOME/.aliases"
fi

if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/homebrew" ]; then
    PATH="$HOME/homebrew/bin:$PATH"
    LD_LIBRARY_PATH="$HOME/homebrew/lib:$LD_LIBRARY_PATH"
fi

if [[ -z "$LC_ALL" ]]; then
    export LC_ALL=en_US.UTF-8
fi

set -o noclobber

export EDITOR="vim"
export PAGER="less"
