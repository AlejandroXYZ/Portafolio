#!/bin/bash
# Count number of characters in a variable:
#     echo $variable | wc -c

# Variable to encode
var="nef892na9s1p9asn2aJs71nIsm"

for counter in {1..40}
do
        var=$(echo $var | base64)

		if [[ $counter == 35 ]]; then
		 echo $var | wc -c
		 echo "Se ha codificado 35 veces"
			break
		 fi
        
done
