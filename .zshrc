# Basic zsh settings
PATH=$PATH:$HOME/.scripts
setopt no_list_ambiguous

# Setting up Defaults
export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='google-chrome'
export MANPAGER='nvim +Man!'
export PATH=/opt/firefox/firefox:$PATH
export PATH="$PATH:[/home/fruz/snap/flutter]/bin"
export SPICETIFY_INSTALL="/home/fruz/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"


# Prompt Settings
PROMPT='%F{blue}%1~%f %F{cyan}•%f '

## Git Settings
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_ zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# Aliases
## App launchers
alias tsm='transmission-remote'
alias v='nvim'
alias b='nvim ~/.config/bspwm/bspwmrc'
alias zsh='nvim ~/.zshrc'
alias s='nvim ~/.config/sxhkd/sxhkdrc'
alias f='ranger'
alias tty='tty-clock -C6 -c -t'
alias pac='sudo pacman'
alias commit='git add -A; git commit -m'
alias weather='clear && curl wttr.in'
alias shot='flameshot gui'
alias kill='killall -q'
alias w='feh --bg-fill --randomize ~/Media/wallpapers/maller/'
alias scrn='redshift'
alias note='nvpy'

alias warp='warp-cli connect'
alias warpdc='warp-cli disconnect'

alias flutrun='flutter run -d chrome --web-renderer canvaskit'

## Terminal maintenance
alias rec='gpg --recv-keys --keyserver hkp://pgp.mit.edu'
alias todo='cat ~/notes/todo.md'
alias todoe='nvim ~/notes/todo.md'
alias reset='cd ~; clear; source ~/.config/zsh/.zprofile'
alias fetch='clear && neofetch && fortune'

## Journal launching aliases
alias v1='date +"%R - %a, %B %d, %Y" | xclip -select clipboard; cd ~/Dropbox/writing/journal; nvim volume-1.md'
alias v2='date +"%R - %a, %B %d, %Y" | xclip -select clipboard; cd ~/Dropbox/writing/journal; nvim volume-2.md'
alias v3='date +"%R - %a, %B %d, %Y" | xclip -select clipboard; cd ~/Dropbox/writing/journal; nvim volume-3.md'
alias v4='date +"%R - %a, %B %d, %Y" | xclip -select clipboard; cd ~/Dropbox/writing/journal; nvim volume-4.md'
alias v5='date +"%R - %a, %B %d, %Y" | xclip -select clipboard; cd ~/Dropbox/writing/journal; nvim volume-5.md'

## Snippets
alias ddate='date +"%R - %a, %B %d, %Y" | xclip -select clipboard && date +"%R - %a, %B %d, %Y"' 

. /home/fruz/misc/z/z.sh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
