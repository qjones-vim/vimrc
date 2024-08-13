ZSH_THEME="frisk"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters
plugins=(git docker)

export PATH=/opt/homebrew/bin:$PATH

source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)
source <(helm completion zsh)

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi



# source files
source_files_in() {
    local dir="$1"

    if [[ -d "$dir" && -r "$dir" && -x "$dir" ]]; then
        for file in "$dir"/*; do
           [[ -f "$file" && -r "$file" ]] && . "$file"
        done
    fi
}

source_files_in ~/dotfiles

# zsh completion for git
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completions.bash
fpath=(~/.zsh $fpath) 

# You may also need to force rebuild `zcompdump`:
rm -f ~/.zcompdump*; compinit

# Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
# to load these completions, you may need to run these commands:
chmod go-w '/opt/homebrew/share' && chmod -R go-w '/opt/homebrew/share/zsh'

