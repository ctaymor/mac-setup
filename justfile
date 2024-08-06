set positional-arguments

alias i := install
about:
  @echo "This repo is setup for Caroline's dev env"

check-scripts:
  find scripts -type f \( -name '*.sh' \) | \xargs shellcheck -x

bundle:
  brew bundle

install:
  ./install.sh

run target-module:
  ./scripts/{{target-module}}
