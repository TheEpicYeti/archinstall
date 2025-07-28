################################################
######   TERMINAL FIRST LAUNCH COMMANDS   ######
################################################

fastfetch


#####################################
######   LOAD STARSHIP THEME   ######
#####################################

eval "$(starship init zsh)"


#############################
######   ZSH PLUGINS   ######
#############################

autoload -U compinit && compinit
source ~/.zsh-plugins/fzf-tab/fzf-tab.plugin.zsh
source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


################################
######   SOURCE ALIASES   ######
################################

source ~/.zsh_aliases


##############################
######   FZF SETTINGS   ######
##############################

export FZF_DEFAULT_COMMAND="find . --hidden -type f | grep -v '/dosdevices/z:'"
export FZF_DEFAULT_COMMAND="fd --hidden --type f | grep -v '/dosdevices/z:'"
export FZF_DEFAULT_OPTS="--exact --highlight-line --style full"

# PREVIEW CONTENTS WHEN TAB COMPLETING DIRECTORIES
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'lsd -1 --color=always $realpath'


#######################################
######   ENVIRONMENT VARIABLES   ######
#######################################

export EDITOR=micro
export VISUAL=micro
export MICRO_TRUECOLOR=1


#########################################
######   COMMAND HISTORY OPTIONS   ######
#########################################

HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.


##################################
######    DELETE KEY FIX    ######
##################################

bindkey "^[[3~" delete-char