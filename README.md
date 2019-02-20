# Auto Mysql Database Backup

# Instalação:
 - Abra o arquivo e defina as constantes de configuração
 - Envie o arquivo para a raíz de sua hospedagem (ou para a pasta que desejar)
 - Crie a pasta em que os backups serão armazenados e dê permissão 755
 - Configure uma Cron Job para executar o arquivo no intervalo desejado
 - Seja feliz ;)
 
# Configuração:
## Para configurar, basta informar os valores abaixo dentro do arquivo de acordo com o seu projeto
 - PASTA_DO_CLIENTE = Normalmente é o mesmo nome de usuário para logar no Cpanel
 - PASTA_DE_BACKUPS = Nome da pasta criada (com permissão 775) para armazenar os backups
 - USER_DO_BANCO = Nome do usuário do banco de dados (com o prefixo)
 - SENHA_DO_BANCO = Senha do usuário do banco de dados
 - NOME_DO_BANCO = Nome do banco de dados a ser feito o backup (com o prefixo)

# Cron Job
## Para executar o backup no intervalo desejado, crie uma Cron Job executando a seguinte linha:
 `/home/PASTA_DO_CLIENTE/public_html/db_backup.sh >/dev/null 2>&1`
 

###### Qualquer dúvida é só entrar em contato comigo em https://rafaelmarques.me
