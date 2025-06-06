#!/bin/bash

var="8dm7KsjU28B7v621Jls"
value="ERmFRMVZ0U2paTlJYTkxDZz09Cg"

for i in {1..40}
do
        var=$(echo $var | base64)
        (echo $var | grep $value)>/dev/null 2>&1 
		if [[ $? == 0 ]]; then
			echo $var | tail -c 20
			exit 0
		fi
done
