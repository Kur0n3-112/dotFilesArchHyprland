# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="nicoulaj"
#ZSH_THEME="xiong-chiamiov-plus"
#ZSH_THEME="funky"

plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    dirhistory
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

zstyle ':omz:update' mode reminder

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
pokemon-colorscripts -r

##NOTE ALISES START

KurScriptsDir="$HOME/Documentos/Scripts/KurFolder"
RedditScriptsDir="$HOME/Documentos/Scripts/RedditFolder"
OrgFilesDir="$HOME/Documentos/org"

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
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

#alias for fileEditor
alias notepad='gedit'

#alias for vm remote viewer session
alias vmScreens="$KurScriptsDir/vm_manager/startRemoteViewer.sh"

#alias for explorer
alias fileExplorer='thunar'

#alias for see images in terminal
alias seeImage='kitty icat'

#alias for cleaning ipc services running
#alias kill_ipcs='$HOME/Documentos/Scripts/./kill_ipcs.sh'

#path for doom emacs
export PATH="$HOME/.config/emacs/bin:$PATH"

#alias for emacs doom
#-> open in Emacs GUI, apart from the term.
#alias ed='doom run'
#alias edA="doom run $OrgFilesDir/kurOrgFiles/ToDo.org"
#-> same but for emacs client
alias ed="emacsclient -c -a 'emacs'"
alias edA="emacsclient -c -a 'emacs' $OrgFilesDir/kurOrgFiles/ToDo.org"
#-> open in the term.
alias edt='doom run -nw'
alias edtA="doom run -nw $OrgFilesDir/kurOrgFiles/ToDo.org"

#alias for changing the ufw rules
alias opufw='sudo nvim /etc/ufw/before.rules'

#alias for timer script
alias timer="$KurScriptsDir/alarm/./timer.sh"

#alias for NeoVim
alias nv='nvim'

#alias for Tree Function
#-> if you write the PID after the command pidTree you can see only the subprocesses that creates a determinate process
alias pidTree='pstree -aps'

#alias for copy the files between org folders
alias cpLocalToSync="$KurScriptsDir/cpOrg/cpLocalToSync.sh"
alias cpSyncToLocal="$KurScriptsDir/cpOrg/cpSyncToLocal.sh"

#alias for showing my schedule
alias horario='kitty icat ~/Documentos/Horario_SoloMisHoras.png'

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

