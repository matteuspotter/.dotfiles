# Make Znap directory, if not already present.
mkdir -p ~/.znap-dir

# Download Znap, if it's not there yet.
[[ -r ~/.znap-dir/znap/znap.zsh ]] ||
	git clone --depth 1 -- \
        	https://github.com/marlonrichert/zsh-snap.git ~/.znap-dir/znap

# Start Znap
source ~/.znap-dir/znap/znap.zsh 

# Loads the minimal 'pure' prompt. https://github.com/sindresorhus/pure
znap prompt sindresorhus/pure

# Adds real-time type-ahead autocompletion to your command line. https://github.com/marlonrichert/zsh-autocomplete
znap source marlonrichert/zsh-autocomplete

# Fish-like fast/unobtrusive autosuggestions for zsh. https://github.com/marlonrichert/zsh-autosuggestions
znap source zsh-users/zsh-autosuggestions

# Fish shell-like syntax highlighting. https://github.com/zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-syntax-highlighting

export LS_COLORS="di=1;34:ln=1;35:fi=0;32:ex=1;36"

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

alias ls="ls -A --color=auto"

alias vim="nvim"
