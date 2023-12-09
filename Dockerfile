FROM php:8.2-apache

LABEL maintainer="Samuel Antônio samuel_neto17@hotmail.com"

# Configurar o Apache para o modo de depuração
RUN echo "LogLevel debug" >> /etc/apache2/apache2.conf
RUN echo "LogLevel trace8" >> /etc/apache2/apache2.conf

# Instale extensões do PHP necessárias
RUN apt-get update && apt-get install -y libldap2-dev unixodbc-dev libgss3 odbcinst freetds-dev \
    && pecl install sqlsrv pdo_sqlsrv \
    && docker-php-ext-enable sqlsrv pdo_sqlsrv \
    && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ \
    && docker-php-ext-install mysqli pdo pdo_mysql ldap

# Ativar mod_rewrite
RUN a2enmod rewrite

# Configurações de segurança do Apache
RUN echo "ServerTokens Prod" >> /etc/apache2/apache2.conf
RUN echo "ServerSignature Off" >> /etc/apache2/apache2.conf
RUN a2dismod -f autoindex

# Habilitar extensões SQLSRV e PDO_SQLSRV para o Apache
RUN docker-php-ext-enable sqlsrv pdo_sqlsrv

# Copiar o arquivo php.ini personalizado para a pasta de configuração
COPY custom-php.ini /usr/local/etc/php/conf.d/custom-php.ini

# Comando para iniciar o servidor Apache
CMD ["apache2-foreground"]
