set positional-arguments

alias i := install
about:
  @echo "This repo is for seting up Caroline's dev env. \n\n `just -l`"

check-scripts:
  find scripts -type f \( -name '*.sh' \) | \xargs shellcheck -x

bundle:
  brew bundle
fix-brew-lock-conflicts:
  git add Brewfile.lock.json && git reset Brewfile.lock.json && git co Brewfile.lock.json && brew bundle && git add Brewfile.lock.json

install:
  ./install.sh

run target-module:
  ./scripts/{{target-module}}
