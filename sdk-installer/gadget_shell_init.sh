#!/bin/bash -ex

which_docker="$(echo $PATH | sed 's/:/\n/g' | sed 's/\n//g' | grep 'Docker Toolbox')"

if [[ -z $which_docker ]]; then
    echo "ERROR: Could not find Docker Toolbox! quitting.."
else
    pushd "${which_docker}" 
    source start.sh
fi

exit
