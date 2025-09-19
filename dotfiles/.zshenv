###########################################
######     ENVIRONMENT VARIABLES     ######
###########################################

export EDITOR=micro
export VISUAL=micro
export MICRO_TRUECOLOR=1


##################################
######     FZF SETTINGS     ######
##################################

export FZF_DEFAULT_COMMAND="fd --type f --hidden \
--exclude '*/dosdevices/z:/*' \
--exclude '*/timeshift/snapshots/*'"

export FZF_DEFAULT_OPTS="--exact --highlight-line --style full \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#313244,label:#CDD6F4"