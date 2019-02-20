#Exclui arquivos antigos (no caso os que estão há 30 dias armazenados na pasta)
find /home/PASTA_DO_CLIENTE/public_html/PASTA_DE_BACKUPS -type f -mtime 30 -exec rm -f {} \;
find /home/PASTA_DO_CLIENTE/public_html -iname "error_log" -type f -exec rm -rfv {} \;

#!/bin/sh

CURRENT_DATE=`/bin/date +%Y-%m-%d`
CURRENT_TIME=`/bin/date +%H-%M`

FOLDER="/home/PASTA_DO_CLIENTE/public_html/PASTA_DE_BACKUPS"
FILENAME=$FOLDER"/NOME_DO_BANCO_"$CURRENT_DATE"_"$CURRENT_TIME".sql"

# Dados de acesso ao banco
HOST="localhost"
USER="USER_DO_BANCO"
PASSWORD="SENHA_DO_BANCO"
DATABASE="NOME_DO_BANCO"

# Executa o dump
mysqldump -h $HOST -u $USER -p$PASSWORD $DATABASE > $FILENAME
