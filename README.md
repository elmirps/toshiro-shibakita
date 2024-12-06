Docker: Utilização prática no cenário de Microsserviços
Denilson Bonatti, Instrutor - Digital Innovation One

Muito se tem falado de containers e consequentemente do Docker no ambiente de desenvolvimento. Mas qual a real função de um container no cenários de microsserviços? Qual a real função e quais exemplos práticos podem ser aplicados no dia a dia? Essas são algumas das questões que serão abordadas de forma prática pelo Expert Instructor Denilson Bonatti nesta Live Coding. IMPORTANTE: Agora nossas Live Codings acontecerão no canal oficial da dio._ no YouTube. Então, já corre lá e ative o lembrete! Pré-requisitos: Conhecimentos básicos em Linux, Docker e AWS.


# Docker: Utilização Prática no Cenário de Microsserviços

## 🚀 Descrição do Projeto

Este projeto demonstra a utilização do **Docker** para criar uma aplicação composta por múltiplos **microsserviços**: um servidor **Nginx**, um backend **PHP** e um banco de dados **MySQL**, orquestrados por **Docker Compose**.

A aplicação tem como objetivo simular um sistema simples que armazena dados de alunos em um banco de dados MySQL, com a interface PHP sendo servida via Nginx.

## ⚙️ Tecnologias Utilizadas

- **Docker**: Plataforma de containers para isolar e automatizar a execução dos serviços.
- **Docker Compose**: Ferramenta para orquestrar múltiplos containers.
- **Nginx**: Servidor web para servir os arquivos PHP.
- **PHP**: Linguagem de programação backend para manipulação do banco de dados.
- **MySQL**: Banco de dados relacional para armazenar informações dos alunos.

## 🔧 Melhoria Proposta

### **Integração com Docker Compose**

A principal melhoria foi integrar o uso do **Docker Compose**, permitindo a orquestração de múltiplos containers para Nginx, PHP e MySQL. Além disso, substituímos a conexão direta no código PHP para uma configuração mais flexível, usando variáveis de ambiente para o acesso ao banco de dados.

### **Banco de Dados MySQL**

A configuração de banco de dados foi movida para um container MySQL, melhorando a modularidade e escalabilidade do projeto.

## ⚡️ Processo de Criação

1. **Estrutura do Projeto**:
   - Criamos o arquivo `docker-compose.yml` para orquestrar os serviços.
   - O servidor **Nginx** foi configurado para servir a aplicação PHP.
   - O **PHP** foi configurado para conectar-se ao banco de dados **MySQL**.
   
2. **Docker Compose**:
   - Criamos um ambiente isolado para os containers de Nginx, PHP e MySQL.
   - A aplicação foi estruturada para garantir fácil configuração e escalabilidade.

3. **Banco de Dados**:
   - O banco de dados foi configurado no MySQL, com uma tabela para armazenar os dados dos alunos.
   
4. **Configuração de Nginx**:
   - O arquivo `nginx.conf` foi ajustado para fazer proxy reverso para o PHP e servir arquivos estáticos.

5. **Testes Locais**:
   - Realizamos testes para garantir que todos os serviços funcionavam corretamente em conjunto.

## 🎯 Resultados Esperados

- **Escalabilidade**: Com o Docker Compose, a aplicação pode ser facilmente escalada, adicionando ou removendo serviços conforme necessário.
- **Ambiente Isolado**: Todos os serviços (Nginx, PHP, MySQL) rodam em containers isolados, garantindo que não haja conflitos de dependências.
- **Facilidade de Uso**: A configuração do ambiente de desenvolvimento ficou mais simples e reprodutível, facilitando a instalação e execução em novas máquinas.

## 📝 Reflexão

Ao utilizar **Docker** e **Docker Compose**, conseguimos simplificar o processo de configuração e orquestração de múltiplos serviços, tornando o desenvolvimento mais modular e eficiente. Além disso, a mudança para containers de banco de dados e a utilização de variáveis de ambiente proporcionaram um sistema mais flexível, escalável e de fácil manutenção.

## 💡 Conclusão

Com a integração do **Docker Compose** e a configuração modular dos containers, o projeto foi transformado em um sistema mais robusto, que pode ser facilmente escalado e mantido. Essa abordagem também prepara o projeto para uma eventual migração para a **nuvem** ou produção, onde o controle sobre a infraestrutura e a escalabilidade são essenciais.
