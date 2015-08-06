export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/heroku/bin:$PATH"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
source ~/.git-prompt.sh

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
LightGray="\[\033[1;37m\]"    # Light Gray
White="\[\033[1;37m\]"        # White

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
Time24="\t"
User="\u"
Host="\h"
PathShort="\w"
PathFull="\w"
NewLine="\n"
Jobs="\j"

if test -z "$VIRTUAL_ENV" ; then
  PYTHON_VIRTUALENV=""
else
  PYTHON_VIRTUALENV="${BLUE}[`basename \"$VIRTUAL_ENV\"`]${COLOR_NONE} "
fi

# Prompt
export PS1=''$NewLine''$Time12a' '$Purple$User$White'@'$Purple$Host$White': '$PathFull$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$White'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'$Red'"$(__git_ps1 " (%s)"); \
  fi) '$Color_Off' "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$Color_Off' "; \
fi) '$White' \n$ '$Color_Off''


# Aliases
alias ls='ls -GFh'
alias df='df -h'
alias vi='vim'

openProject() {
    cd ~/Documents/www/$1
}
alias www=openProject
alias dev='cd ~/Documents/www/rocketrip-dev/ && source venv/bin/activate'
