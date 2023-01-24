set positional-arguments

alias i := install
about:
  @echo "This repo is setup for Caroline's dev env"

bundle:
  brew bundle

install:
  ./install.sh

run target-module:
  ./scripts/{{target-module}}
