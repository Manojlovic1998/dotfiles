# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Install zplug.
if [[ ! -e ~/.zplug ]]; then
  git clone --depth=1 https://github.com/zplug/zplug.git ~/.zplug
  () {
    emulate -L zsh -o extended_glob
    local f
    for f in ~/.zplug/**/*.zsh(.) ~/.zplug/autoload/**/^*.zsh(.); do
      zcompile -R -- $f.zwc $f
    done
  }
fi

# Source lfcd script, for tmux lf cd func.
source ~/.config/lf/lfcd.sh
# Source zplug for zsh plugins
source ~/.zplug/init.zsh
#Plugins
zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "zsh-users/zsh-autosuggestions", from:github
zplug "zsh-users/zsh-history-substring-search", from:github
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Activate Powerlevel10k Instant Prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install?" [y/N]:
  if read -q; then
    echo; zplug install
  fi
fi

# Source plugins and add commands to $PATH
zplug load
source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
