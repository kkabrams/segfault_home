#!/bin/sh
if [ "_$1" == "_" ];then
 echo '!say usage: !subseg server port'
 echo '!say        No SSL support yet. open an ssl tunnel yourself. :P'
 exit 1
else
 export segserver=$1
fi
if [ "_$2" == "_" ];then
 export segport=6667
else
 export segport=$2
fi
if [ "_$3" == "_" ];then
 export 'segchan=#default'
else
 export "segchan=$3"
fi
export seghome=/home/segfault/subseg/$$
mkdir -p $seghome
mkdir $seghome/scripts
echo '!rawrecord 1' >> $seghome/scripts/prestartup
echo '!nick subseg' >> $seghome/scripts/prestartup
echo '!raw user ss ss ss :ss' >> $seghome/scripts/prestartup

echo '!raw join '"$segchan" >> $seghome/scripts/startup
echo '!leettail 02'"$segchan"':'$seghome/files/eval_in >> $seghome/scripts/startup
mkdir -p $seghome/files
touch $seghome/files/eval_in
touch $seghome/files/rawlog
echo '!say check it. tailing in 5 seconds...'$$
segfault 2>&1 >/dev/null &
sleep 5
echo '!leettail 08#cmd:'$seghome/files/rawlog
echo '!alias !tellsub'$$' !leetappend '$seghome'/files/eval_in 10 %s'
