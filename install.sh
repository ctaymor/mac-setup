#! /usr/bin/env bash
set -ue

function run_subscripts {
	for f in ~/workspace/mac-setup/scripts/*
	do
		$f
	done
}
function main {
	echo "Running brew bundle"
	brew bundle
	echo "Running ./scripts/*"
	run_subscripts 
}

main
