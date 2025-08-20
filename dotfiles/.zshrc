#############################################
######     COMMAND HISTORY OPTIONS     ######
#############################################

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
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


######################################
######      DELETE KEY FIX      ######
######################################

bindkey "^[[3~" delete-char


#################################
######     ZSH PLUGINS     ######
#################################

autoload -U compinit && compinit
source ~/.zsh-plugins/fzf-tab/fzf-tab.plugin.zsh
source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


##################################
######     FZF SETTINGS     ######
##################################

# PREVIEW CONTENTS WHEN TAB COMPLETING DIRECTORIES
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'lsd -1 --color=always $realpath'


####################################
######     SOURCE ALIASES     ######
####################################

source ~/.zsh_aliases


#########################################
######     LOAD STARSHIP THEME     ######
#########################################

eval "$(starship init zsh)"
##### REMOVE RIGHT INDENT
ZLE_RPROMPT_INDENT=0 


####################################################
######     TERMINAL FIRST LAUNCH COMMANDS     ######
####################################################

fastfetch