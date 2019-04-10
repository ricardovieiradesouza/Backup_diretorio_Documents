#!/bin/bash

DATA=`date +%Y/%m/%d__%H:%M:%S`
LOGS=/var/log/script.log


rsync -avzh /home/rvs/Documents/* servidor1:/home/MEGA

if [ $? == 0 ] 
then
	echo "$DATA $0 Backup realizado com sucesso" >>$LOGS
	echo "" >>$LOGS
else
	echo "$DATA $0 Backup falhou " >>$LOGS
	echo "" >>$LOGS

fi
