# PHP Apache Docker Boilerplate

Este repositório fornece um Dockerfile que facilita a criação de um ambiente PHP com Apache para a implantação de páginas web. Com as configurações incluídas, você terá um servidor web pronto para uso, juntamente com extensões PHP essenciais.

## Recursos

- **PHP 8.2 com Apache:** Use a imagem oficial do PHP com suporte ao Apache.
- **Configurações Personalizadas:** Inclui configurações adicionais para o Apache e PHP, proporcionando um ambiente otimizado e seguro.
- **Extensões PHP Necessárias:** Instala extensões como `sqlsrv`, `pdo_sqlsrv`, `mysqli`, `pdo`, `pdo_mysql` e `ldap` para suportar diversos tipos de aplicativos.

## Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas em seu sistema:

- [Docker](https://www.docker.com/)

## Configuração

Clone este repositório em seu ambiente de desenvolvimento:

```bash
git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio
```

## Docker Compose

Execute o seguinte comando para iniciar os serviços usando o Docker Compose:

```bash
docker-compose up
```

Isso iniciará o serviço PHP com Apache. O PHP estará acessível em `http://localhost:8080`.

## Configurações Personalizadas

### Arquivo `custom-php.ini`

O arquivo `custom-php.ini` contém configurações personalizadas do PHP. Certifique-se de ajustar conforme necessário.

## Autor

Samuel Antônio
Contato: samuel_neto17@hotmail.com
