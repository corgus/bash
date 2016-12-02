## Looad the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
#
for file in ./{aliases,functions,path,prompt}.sh; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


## Tab completion for many Bash commands
#
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    source "$(brew --prefix)/etc/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

## NVM
#
export NVM_DIR="/Users/corg/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
