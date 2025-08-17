#########################################
######     LOAD STARSHIP THEME     ######
#########################################

eval "$(starship init zsh)"
##### REMOVE RIGHT INDENT
ZLE_RPROMPT_INDENT=0 


#################################
######     ZSH PLUGINS     ######
#################################

autoload -U compinit && compinit
source ~/.zsh-plugins/fzf-tab/fzf-tab.plugin.zsh
source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


###########################################
######     ENVIRONMENT VARIABLES     ######
###########################################

export EDITOR=micro
export VISUAL=micro
export MICRO_TRUECOLOR=1


##################################
######     FZF SETTINGS     ######
##################################

export FZF_DEFAULT_COMMAND="find . --hidden -type f | grep -v '/dosdevices/z:'"
export FZF_DEFAULT_COMMAND="fd --hidden --type f | grep -v '/dosdevices/z:'"
export FZF_DEFAULT_OPTS="--exact --highlight-line --style full \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#313244,label:#CDD6F4"

# PREVIEW CONTENTS WHEN TAB COMPLETING DIRECTORIES
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'lsd -1 --color=always $realpath'


######################################
######      DELETE KEY FIX      ######
######################################

bindkey "^[[3~" delete-char


####################################
######     SOURCE ALIASES     ######
####################################

source ~/.zsh_aliases


#############################################
######     COMMAND HISTORY OPTIONS     ######
#############################################

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS


####################################################
######     TERMINAL FIRST LAUNCH COMMANDS     ######
####################################################

fastfetch