#!/bin/bash
printf "Run: "
while read text;
do
	bash -c "$text" >/dev/null 2>&1;
	echo $?;
	printf "Run: "
done
