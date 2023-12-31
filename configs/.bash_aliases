# This file contains all the aliases I use in my bash shell.

# bash aliases
alias b='bash'
alias sb='source ~/.bashrc'
alias sbp='source ~/.bash_profile'
alias sba='source ~/.bash_aliases'
alias sbrc='source ~/.bashrc'

# nala aliases
alias apt='nala'
alias update='sudo nala update'
alias upgrade='sudo nala upgrade -y'

# ls aliases
alias ls='exa -al --color=always --header --icons --group-directories-first' # my preferred listing
alias la='exa -a --color=always --header --icons --group-directories-first'    # all files and dirs
alias lah='exa -ahl --color=always --header --icons --group-directories-first' # all files and dirs, long format
alias ll='exa -l --color=always --header --icons --group-directories-first'    # long format
alias lt='exa -aT --color=always --header --icons --group-directories-first'   # tree listing
alias l.='exa -a | egrep "^\."'

# cat aliases
alias bat=batcat
alias cat='batcat --style=plain --color=always'
# ssh aliases
alias acer='ssh acer'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status' # 'status' is protected name so using 'stat' instead
alias tag='git tag'
alias newtag='git tag -a'

# GaurAfro GitHUb aliases
alias gaurafro='cd $HOME/gaurafro-dotfiles'
alias gdf='cd $HOME/gaurafro-dotfiles'
alias gdfs='cd $HOME/gaurafro-dotfiles/scripts'
alias gdfc='cd $HOME/gaurafro-dotfiles/configs'
alias updategd='update_gaurafro_dotfiles.sh'
alias updatecp='update_coding_projects.sh'
alias gcf='cd $HOME/.config'
alias gdl='cd $HOME/Downloads'
alias gdlr='cd $HOME/Downloads/repos'
alias gdo='cd $HOME/Documents'
alias gpi='cd $HOME/Pictures'
alias gmu='cd $HOME/Music'
alias gvi='cd $HOME/Videos'
alias gcp='cd $HOME/coding-projects'
alias gof='cd $HOME/gaurafro-dotfiles/notes/org'
alias gmqs='cd $HOME/my-qtile-setup'
alias gmq='cd $HOME/my-qtile-setup'


# neovim aliases
alias v='nvim'
alias v.='nvim .'
alias n='nvim'
alias n.='nvim .'
alias nv='nvim'
alias nv.='nvim .'
alias vi='nvim'
alias vi.='nvim .'
alias vim='nvim'
alias vim.='nvim .'

# tmux aliases
alias t='tmux'
alias ta='tmux attach'
alias tn='tmux new'
alias tns='tmux new -s'
alias tl='tmux ls'
alias tk='tmux kill-session'
alias ts='tmux switch -t'
alias tks='tmux kill-session -t'
alias tns='tmux new-session -s'

# python aliases
alias py='python3'
alias py2='python2'
alias py3='python3'
alias pip='pip3'

# emacs and doom aliases
alias emacs='emacsclient -c -n'
alias emacst='emacsclient -nw'
alias doom='emacsclient28 -c -n'
alias doomt='emacsclient28 -nw'
alias space='emacsclient28 -c -n'
alias spacet='emacsclient28 -nw'

# NeoVim aliases
# open ~/gaurafro-dotfiles
alias nd='nvim ~/gaurafro-dotfiles/'
alias vd='nvim ~/gaurafro-dotfiles/'
alias ngd='nvim ~/gaurafro-dotfiles/'
alias vgd='nvim ~/gaurafro-dotfiles/'
# open bash aliases file
alias nba='nvim ~/.bash_aliases'
alias vba='nvim ~/.bash_aliases'
# open bashrc file
alias nbr='nvim ~/.bashrc'
alias vbr='nvim ~/.bashrc'
# open bash_profile file
alias nbp='nvim ~/.bash_profile'
alias vbp='nvim ~/.bash_profile'
# open nvim config folder
alias nc='pushd ~/.config/nvim/ && nvim . && popd'
alias vc='pushd ~/.config/nvim/ && nvim . && popd'
alias ncf='pushd ~/.config/nvim/ && nvim . && popd'
alias vcf='pushd ~/.config/nvim/ && nvim . && popd'

# open i3 config file
alias ni3='nvim ~/.config/i3/config'
alias vi3='nvim ~/.config/i3/config'
# open i3status config file
alias ni3s='nvim ~/.config/i3status/config'
alias vi3s='nvim ~/.config/i3status/config'
# open polybar config file
alias npb='nvim ~/.config/polybar/config'
alias vpb='nvim ~/.config/polybar/config'

# Browser aliases (for optimus laptop)
alias firefox="primusrun /snap/bin/firefox"
alias chrome="primusrun flatpak run com.google.Chrome"
alias brave="primusrun flatpak run com.brave.Browser"


# open ranger config file
# alias nr='nvim ~/.config/ranger/rc.conf'
# alias vr='nvim ~/.config/ranger/rc.conf'
# open zsh config file
# alias nz='nvim ~/.zshrc'
# alias vz='nvim ~/.zshrc'
# open tmux config file
# alias nt='nvim ~/.tmux.conf'
# alias vt='nvim ~/.tmux.conf'
# open git config file
# alias ng='nvim ~/.gitconfig'
# alias vg='nvim ~/.gitconfig'
# open ssh config file
# alias ns='nvim ~/.ssh/config'
# alias vs='nvim ~/.ssh/config'
# open xinitrc config file
# alias nx='nvim ~/.xinitrc'
# alias vx='nvim ~/.xinitrc'
# open xresources config file
# alias nX='nvim ~/.Xresources'
# alias vX='nvim ~/.Xresources'
# open xmodmap config file
# alias nm='nvim ~/.Xmodmap'
# alias vm='nvim ~/.Xmodmap'
# open xbindkeys config file
# alias nb='nvim ~/.xbindkeysrc'
# alias vb='nvim ~/.xbindkeysrc'
# open xprofile config file
# alias nXp='nvim ~/.xprofile'
# alias vXp='nvim ~/.xprofile'
# open xsession config file
# alias nXs='nvim ~/.xsession'
# alias vXs='nvim ~/.xsession'
# open dmenu config file
# alias nd='nvim ~/.dmenurc'
# alias vd='nvim ~/.dmenurc'

