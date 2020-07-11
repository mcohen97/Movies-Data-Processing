#!/bin/bash

for f in movies_denormalized/*.txt; do 
	mv -- "$f" "${f%.txt}.json" 
done
