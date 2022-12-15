#!/usr/bin/bash/env bash

function SpacePackages {
	declare -g -a PyPkgs=(
		$(apt list --installed)
	)
	
	for pkg in "${PyPkgs[@]}"
	do
		if [[ "$pkg" != *"py"* ]]; then {
			del="${pkg}"
		}; fi
		PyPkgs=("${PyPkgs[@]}/$del")
	done
}

SpacePackages