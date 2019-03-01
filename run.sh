#!/bin/bash

declare -r SPADES_BIN_DIR=$(dirname $0)
declare -x PATH=${SPADES_BIN_DIR}:${PATH}
declare SubProgram=$(echo ${1} | tr '[A-Z]' '[a-z]')

function usage() {
    cat <<EOF
SPAdes wrapper.

Usage:

    dna     Assemble Genome
    rna     Assemble Transcriptome

EOF
}

if [[ $# -lt 1 ]]; then usage && exit 1; fi

case $SubProgram in
    dna)
        shift && spades.py    "$@";;
    rna)
        shift && rnaspades.py "$@";;
    *)
        echo "Unknown subcommand $SubProgram, exiting..."
        exit 1
    ;;
esac
