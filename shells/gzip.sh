# a la madrugada aplico gzip a los 24 archivos tar de cada hora (tienen adentro 60 archivos, uno por minuto)
dAnt=$(date --date='-1 day' +%Y%m%d)

ani=$(echo $dAnt | cut -c1-4)
mes=$(echo $dAnt | cut -c5,6)
dia=$(echo $dAnt | cut -c7,8)
hor=$(echo $hAnt | cut -c9,10)

gzip /home/SIADadmin/bin/tars/$ani/$mes/$dia/$ani$mes$dia[0-2][0-9].tar
mkdir -p /home/SIADadmin/bin/gzips/$ani/$mes/$dia
cp /home/SIADadmin/bin/tars/$ani/$mes/$dia/$ani$mes$dia[0-2][0-9].tar.gz  /home/SIADadmin/bin/gzips/$ani/$mes/$dia/ 

echo " Se comprimio el respaldo de ayer"
echo " Dia anterior: $dia"
echo " Mes: $mes"
echo " Año: $ani"
echo ""
echo ""
source /home/SIADadmin/bin/borrar
