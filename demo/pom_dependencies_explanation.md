# Dependências do Projeto FingerprintDeviceDemo

Este documento explica a função de cada dependência utilizada no arquivo `pom.xml` do projeto FingerprintDeviceDemo, incluindo as versões e a compatibilidade com as versões do Java e Tomcat.

## Compatibilidade
- **Java Version**: 1.8
- **Tomcat Version**: 7 ou 8

## Dependências do Spring

- **spring-core**: Biblioteca central do Spring. (Versão: 4.3.7.RELEASE)
- **spring-beans**: Suporte para injeção de dependência no Spring. (Versão: 4.3.7.RELEASE)
- **spring-context**: Configuração do contexto da aplicação Spring. (Versão: 4.3.7.RELEASE)
- **spring-context-support**: Classes de suporte para o contexto Spring. (Versão: 4.3.7.RELEASE)
- **spring-web**: Suporte para construção de aplicações web com Spring. (Versão: 4.3.7.RELEASE)
- **spring-webmvc**: Suporte para construção de aplicações web usando o padrão MVC com Spring. (Versão: 4.3.7.RELEASE)
- **spring-tx**: Gerenciamento de transações no Spring. (Versão: 4.3.7.RELEASE)
- **spring-jdbc**: Suporte para operações JDBC no Spring. (Versão: 4.3.7.RELEASE)
- **spring-aop**: Suporte para programação orientada a aspectos no Spring. (Versão: 4.3.7.RELEASE)
- **spring-oxm**: Suporte para mapeamento de objetos/XML no Spring. (Versão: 4.3.7.RELEASE)
- **spring-test**: Suporte para testes de aplicações Spring. (Versão: 4.3.7.RELEASE)

## Dependências do Jackson

- **jackson-core**: Biblioteca para processamento de JSON. (Versão: 2.9.8)
- **jackson-databind**: Biblioteca para ligação de JSON. (Versão: 2.9.8)
- **jackson-annotations**: Anotações para processamento de JSON com Jackson. (Versão: 2.9.8)

## Dependências do MySQL

- **mysql-connector-java**: Conector JDBC para bancos de dados MySQL. (Versão: 5.1.36)

## Dependências do MyBatis

- **mybatis**: Framework de persistência. (Versão: 3.5.6)
- **mybatis-spring**: Integração do MyBatis com o Spring. (Versão: 1.3.0)

## Dependências Adicionais

- **javax.servlet-api**: Biblioteca para construção de aplicações servlet. (Versão: 3.0.1, Escopo: provided)
- **javax.websocket-api**: Biblioteca para construção de aplicações WebSocket. (Versão: 1.1, Escopo: provided)
- **javax.json-api**: Biblioteca para processamento de JSON. (Versão: 1.1.4)
- **javax.json**: Implementação do Java JSON API. (Versão: 1.1.4)
- **commons-codec**: Biblioteca para codificação e decodificação de dados. (Versão: 1.14)
- **commons-dbcp**: Biblioteca para pooling de conexões de banco de dados. (Versão: 1.2.2)
- **commons-fileupload**: Biblioteca para manipulação de uploads de arquivos. (Versão: 1.3.1)
- **commons-io**: Biblioteca para operações de IO. (Versão: 2.5)
- **jstl**: Biblioteca de tags padrão JSP. (Versão: 1.2)
- **log4j**: Biblioteca de logging. (Versão: 1.2.17)
- **fastjson**: Biblioteca para processamento rápido de JSON. (Versão: 1.1.41)
- **slf4j-api**: API de abstração de logging. (Versão: 1.7.7)
- **slf4j-log4j12**: Implementação do SLF4J para Log4J. (Versão: 1.7.7)
- **jackson-mapper-asl**: Biblioteca para mapeamento de JSON. (Versão: 1.9.13)
- **pagehelper**: Biblioteca para paginação com MyBatis. (Versão: 5.1.4)
- **uow**: Biblioteca para gerenciamento de transações de unidade de trabalho (IBM UOW). (Versão: 6.0.2.17)

## Plugins do Maven

- **maven-clean-plugin**: Plugin para limpeza do projeto. (Versão: 3.1.0)
- **maven-resources-plugin**: Plugin para manipulação de recursos. (Versão: 3.0.2)
- **maven-compiler-plugin**: Plugin para compilação do projeto. (Versão: 3.8.0)
- **maven-surefire-plugin**: Plugin para execução de testes. (Versão: 2.22.1)
- **maven-jar-plugin**: Plugin para criação de arquivos JAR. (Versão: 3.0.2)
- **maven-install-plugin**: Plugin para instalação do projeto no repositório local. (Versão: 2.5.2)
- **maven-deploy-plugin**: Plugin para implantação do projeto em um repositório remoto. (Versão: 2.8.2)

## Planilha de Dependências

| Dependência                  | Versão       | Função                                                     | Compatibilidade com Java | Compatibilidade com Tomcat |
|------------------------------|--------------|------------------------------------------------------------|--------------------------|----------------------------|
| spring-core                  | 4.3.7.RELEASE| Biblioteca central do Spring                               | 1.8                      | 7, 8                       |
| spring-beans                 | 4.3.7.RELEASE| Suporte para injeção de dependência no Spring               | 1.8                      | 7, 8                       |
| spring-context               | 4.3.7.RELEASE| Configuração do contexto da aplicação Spring                | 1.8                      | 7, 8                       |
| spring-context-support       | 4.3.7.RELEASE| Classes de suporte para o contexto Spring                   | 1.8                      | 7, 8                       |
| spring-web                   | 4.3.7.RELEASE| Suporte para construção de aplicações web com Spring        | 1.8                      | 7, 8                       |
| spring-webmvc                | 4.3.7.RELEASE| Suporte para construção de aplicações web usando MVC        | 1.8                      | 7, 8                       |
| spring-tx                    | 4.3.7.RELEASE| Gerenciamento de transações no Spring                       | 1.8                      | 7, 8                       |
| spring-jdbc                  | 4.3.7.RELEASE| Suporte para operações JDBC no Spring                       | 1.8                      | 7, 8                       |
| spring-aop                   | 4.3.7.RELEASE| Suporte para programação orientada a aspectos no Spring     | 1.8                      | 7, 8                       |
| spring-oxm                   | 4.3.7.RELEASE| Suporte para mapeamento de objetos/XML no Spring            | 1.8                      | 7, 8                       |
| spring-test                  | 4.3.7.RELEASE| Suporte para testes de aplicações Spring                    | 1.8                      | 7, 8                       |
| jackson-core                 | 2.9.8        | Biblioteca para processamento de JSON                       | 1.8                      | 7, 8                       |
| jackson-databind             | 2.9.8        | Biblioteca para ligação de JSON                             | 1.8                      | 7, 8                       |
| jackson-annotations          | 2.9.8        | Anotações para processamento de JSON com Jackson            | 1.8                      | 7, 8                       |
| mysql-connector-java         | 5.1.36       | Conector JDBC para bancos de dados MySQL                    | 1.8                      | 7, 8                       |
| mybatis                      | 3.5.6        | Framework de persistência                                   | 1.8                      | 7, 8                       |
| mybatis-spring               | 1.3.0        | Integração do MyBatis com o Spring                          | 1.8                      | 7, 8                       |
| javax.servlet-api            | 3.0.1        | Biblioteca para construção de aplicações servlet            | 1.8                      | 7, 8                       |
| javax.websocket-api          | 1.1          | Biblioteca para construção de aplicações WebSocket          | 1.8                      | 7, 8                       |
| javax.json-api               | 1.1.4        | Biblioteca para processamento de JSON                       | 1.8                      | 7, 8                       |
| javax.json                   | 1.1.4        | Implementação do Java JSON API                              | 1.8                      | 7, 8                       |
| commons-codec                | 1.14         | Biblioteca para codificação e decodificação de dados        | 1.8                      | 7, 8                       |
| commons-dbcp                 | 1.2.2        | Biblioteca para pooling de conexões de banco de dados       | 1.8                      | 7, 8                       |
| commons-fileupload           | 1.3.1        | Biblioteca para manipulação de uploads de arquivos          | 1.8                      | 7, 8                       |
| commons-io                   | 2.5          | Biblioteca para operações de IO                             | 1.8                      | 7, 8                       |
| jstl                         | 1.2          | Biblioteca de tags padrão JSP                               | 1.8                      | 7, 8                       |
| log4j                        | 1.2.17       | Biblioteca de logging                                       | 1.8                      | 7, 8                       |
| fastjson                     | 1.1.41       | Biblioteca para processamento rápido de JSON                | 1.8                      | 7, 8                       |
| slf4j-api                    | 1.7.7        | API de abstração de logging                                 | 1.8                      | 7, 8                       |
| slf4j-log4j12                | 1.7.7        | Implementação do SLF4J para Log4J                           | 1.8                      | 7, 8                       |
| jackson-mapper-asl           | 1.9.13       | Biblioteca para mapeamento de JSON                          | 1.8                      | 7, 8                       |
| pagehelper                   | 5.1.4        | Biblioteca para paginação com MyBatis                       | 1.8                      | 7, 8                       |
| uow                          | 6.0.2.17     | Biblioteca para gerenciamento de transações de unidade de trabalho (IBM UOW) | 1.8 | 7, 8 |

## Plugins do Maven

| Plugin                      | Versão  | Função                                                         |
|-----------------------------|---------|----------------------------------------------------------------|
| maven-clean-plugin          | 3.1.0   | Plugin para limpeza do projeto                                 |
| maven-resources-plugin      | 3.0.2   | Plugin para manipulação de recursos                            |
| maven-compiler-plugin       | 3.8.0   | Plugin para compilação do projeto                               |
| maven-surefire-plugin       | 2.22.1  | Plugin para execução de testes                                 |
| maven-jar-plugin            | 3.0.2   | Plugin para criação de arquivos JAR                            |
| maven-install-plugin        | 2.5.2   | Plugin para instalação do projeto no repositório local         |
| maven-deploy-plugin         | 2.8.2   | Plugin para implantação do projeto em um repositório remoto    |
