#!/bin/bash

for USER in $(cut -d":" -f1 /etc/passwd);do
	DIR=$(grep ^$USER: /etc/passwd | cut -d":" -f6)
	if [ -d $DIR ];then
		TAM=$(du -sm $DIR 2> /dev/null |cut -f1 )
		if [ "$TAM" -ge 200 ];then
			usermod -L $USER                #para desactivar ponemos -L para activar de nuevo seria -U(unlock)
		fi
	fi

done


