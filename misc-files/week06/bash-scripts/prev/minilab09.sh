#! /usr/local/bin/bash

suffix=pos
compute_suffix() {
    if (($1 > 6)); then
        suffix=pos
    elif (($1 < 5)); then
        suffix=neg
    else
        echo "invalid input, no reviews with rating $1"
        return 1000
    fi
}

if [[ $# -eq 2 ]]; then
    compute_suffix $2
    if [[ $? -ne 1000 ]]; then
        cat $1/${suffix}/*_$2.txt > output$2.txt
    fi
fi

if [[ $# -eq 3 ]]
then
    val=$2
    while ((val <= $3))
    do
        compute_suffix ${val}
        if [[ $? -ne 1000 ]]
        then
            cat $1/${suffix}/*_${val}.txt > output${val}.txt
        fi
        val=$((val+1))
    done
fi
