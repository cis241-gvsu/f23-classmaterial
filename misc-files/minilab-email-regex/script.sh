#! /usr/local/bin/bash

for file in $@
do
    grep -E -v '^[[:alnum:]]([[:alnum:]]|([.][[:alnum:]]))*@[[:alnum:]]([[:alnum:]]|([.-][[:alnum:]]))*[.][[:alpha:]]{2,}$' $file 
done    
