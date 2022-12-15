#!/usr/bin/bash/env bash

declare -g -a Packages=(
	$(apt list --installed)
)

for pkg in "${Packages[@]}"
do
    if [[ "$pkg" == *"py"* ]]; then {
		echo 
	}
	fi
	
done