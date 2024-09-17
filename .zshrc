# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="xiong-chiamiov-plus"
#ZSH_THEME="funky"

plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

zstyle ':omz:update' mode reminder

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
pokemon-colorscripts -r

# force zsh to show the complete history
alias history="history 0"

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# aliases for bat
alias cat='bat'

#aliases for Flatpak Apps
alias obs='flatpak run com.obsproject.Studio'
alias discord='flatpak run com.discordapp.Discord'
alias codium='flatpak run com.vscodium.codium'

#aliases for lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

#aliases for fileEditor
#alias notepad=''

#aliases for vm remote viewer session
alias vmScreens='~/Documentos/Scripts/vm_manager/startRemoteViewer.sh'

#aliases for explorer
alias fileExplorer='thunar'

#aliases for see images in terminal
alias seeImage='kitty icat'

#aliases for cleaning ipc services running
#alias kill_ipcs='$HOME/Documentos/Scripts/./kill_ipcs.sh'

#path for doom emacs
export PATH="$HOME/.config/emacs/bin:$PATH"

#aliases for emacs doom 
#-> open in Emacs GUI, apart from the term.
alias ed='doom run'
alias edA='doom run ~/Documentos/org/agendaOrgSyncthing/ToDo.org'
#-> open in the term.
alias edt='doom run -nw'
alias edtA='doom run -nw ~/Documentos/org/agendaOrgSyncthing/ToDo.org'

#aliases for changing the ufw rules
alias opufw='sudo nvim /etc/ufw/before.rules'

#aliases for timer script
alias timer='$HOME/Documentos/Scripts/alarm/./timer.sh'

#alises for NeoVim
alias nv='nvim'

#alises for Tree Function
#-> if you write the PID after the command pidTree you can see only the subprocesses that creates a determinate process
alias pidTree='pstree -aps'

# enable auto-suggestions based on the history
if [ -f /usr/share/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . /usr/share/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
    # change suggestion color
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'
fi

# enable command-not-found if installed
if [ -f /etc/zsh_command_not_found ]; then
    . /etc/zsh_command_not_found
fi

