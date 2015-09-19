ani=$(date +%Y)
mes=$(date +%m)
dia=$(date +%d)
hor=$(date +%H)
min=$(date +%M)
echo $ani/$mes/$dia $hor:$min


mkdir -p /home/SIADadmin/bin/log/$ani/$mes/$dia/$hor/ 2>/dev/null


who | grep "SIAD" >/home/SIADadmin/bin/log/$ani/$mes/$dia/$hor/$ani$mes$dia$hor$min





