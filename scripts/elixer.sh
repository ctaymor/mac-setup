#! /usr/bin/env bash

set -eux

set +e
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
set -e

asdf install erlang 25.2.2

set +e
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
set -e

asdf install elixir 1.14.3-otp-25
