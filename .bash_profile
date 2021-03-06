# Places to look for executables

function _look_for_executables_in {
  # Only adds the path to $PATH if it exists
  test -d $1 && export PATH="$1:$PATH"
}

# Prepend /usr/local/bin so that homebrew-installed executables override default OS ones
_look_for_executables_in "/usr/local/bin"

# Global NPM Executables
_look_for_executables_in "/usr/local/share/npm/bin" &&
  # Executables from the node modules in the current directory
  export PATH="./node_modules/.bin:$PATH"

# Clojure Executables
_look_for_executables_in "$HOME/.cljr/bin"

# Ruby Executables (via rbenv)
test -d "$HOME/.rbenv" && eval "$(rbenv init -)"

# Heroku Toolbelt
_look_for_executables_in "/usr/local/heroku/bin"

# Custom Executables
_look_for_executables_in "$HOME/bin"

# ---

# A custom fancy prompt
test -f "$HOME/.prompt.sh" &&
  source "$HOME/.prompt.sh"

# ---

# Set sublime to the default editor and alias it to `e` if it is present
subl=`which subl`
test $subl &&
  export EDITOR="$subl --wait" &&
  alias e=subl

# ---

# For ruby development
which -s bundle && alias be="bundle exec"

# ---

# Annotate file types : -F
# Colors              : -G
# Human file sizes    : -h
export LSCOLORS=ExGxFxdxCxDxDxaccxaeex
alias ls='ls -FGh'

# ---

# Add git completion
test -f "/usr/local/etc/bash_completion.d/git-completion.bash" &&
  source "/usr/local/etc/bash_completion.d/git-completion.bash"
