# Usar a imagem oficial do PHP com suporte a FPM
FROM php:7.4-fpm

# Instalar as dependências necessárias (como o cliente MySQL)
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd mysqli

# Definir o diretório de trabalho dentro do container
WORKDIR /var/www/html

# Copiar os arquivos PHP do diretório local para o container
COPY ./html /var/www/html

# Expor a porta 9000 para a comunicação com o Nginx
EXPOSE 9000

# Comando para iniciar o PHP-FPM
CMD ["php-fpm"]

