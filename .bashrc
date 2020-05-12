set GIT_EDITOR=vi
set ARC_EDITOR=vi
export PATH=$PATH:~/bin:~/.tools/diff-so-fancy/

# Manage resize of screen
shopt -s checkwinsize

source /usr/share/bash-completion/completions/git 
source ~/.tools/bash-git-prompt/gitprompt.sh

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
     . /etc/bash_completion

  function_exists() {
       declare -f -F $1 > /dev/null
       return $?
   }

  for al in `__git_aliases`; do
      alias g$al="git $al"

      complete_func=_git_$(__git_aliased_command $al)
      function_exists $complete_fnc && __git_complete g$al $complete_func
  done

fi
export LS_COLORS="~/.ls_colors"
eval `dircolors ~/.ls_colors`

if [ -e .bashrc.local ]; then
  source .bashrc.local
fi

