#! /usr/bin/env bash
set -ue

function run_subscripts {
	for f in ~/workspace/mac-setup/scripts/*
	do
		$f
	done
}
function main {
	which brew
	if [[ $? -ne 0 ]]; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ctaymor/.zprofile
	fi
    eval "$(/opt/homebrew/bin/brew shellenv)"
	echo "Running brew bundle"
	brew bundle
	echo "Running ./scripts/*"
	run_subscripts 
}

main
