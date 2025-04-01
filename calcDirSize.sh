#!/bin/bash
# Aufgabe: 3
# Name: Radbauer Felix
# Login-Nummer: i2052
# Klasse: 3AI
# Datum 2024-11-18
if (($# != 1)); then
	echo "Usage: calc_size <directory>" exit 1
fi

if [[ ! -d $1 || -f $1 ]]; then
	echo "Error: $1 is not a valid directory." exit 1
else
	echo -n "Total size of files in $1: " 
	echo $(du -hs $1 | head -c 4)
fi