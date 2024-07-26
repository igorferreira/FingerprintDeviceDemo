# Explicação das Dependências do POM

Este documento descreve as dependências listadas no arquivo `pom.xml` do projeto.

## Dependências

### Spring Framework
- **spring-core**: Biblioteca central do Spring Framework. `Versão: 4.0.2.RELEASE`
- **spring-beans**: Biblioteca de injeção de dependências do Spring. `Versão: 4.0.2.RELEASE`
- **spring-context**: Biblioteca de configuração do contexto da aplicação. `Versão: 4.0.2.RELEASE`
- **spring-context-support**: Classes de suporte para o Spring Context. `Versão: 4.0.2.RELEASE`
- **spring-web**: Biblioteca para construir aplicações web com Spring. `Versão: 4.0.2.RELEASE`
- **spring-webmvc**: Biblioteca para construir aplicações web com arquitetura MVC. `Versão: 4.0.2.RELEASE`
- **spring-tx**: Gerenciamento de transações do Spring. `Versão: 4.0.2.RELEASE`
- **spring-jdbc**: Operações JDBC com Spring. `Versão: 4.0.2.RELEASE`
- **spring-aop**: Programação orientada a aspectos com Spring. `Versão: 4.0.2.RELEASE`
- **spring-oxm**: Mapeamento Objeto/XML com Spring. `Versão: 4.0.2.RELEASE`
- **spring-test**: Biblioteca de teste para aplicações Spring. `Versão: 4.0.2.RELEASE`

### Jackson (Processamento JSON)
- **jackson-core**: Biblioteca central do Jackson para processamento JSON. `Versão: 2.9.8`
- **jackson-databind**: Biblioteca de vinculação JSON. `Versão: 2.9.8`
- **jackson-annotations**: Anotações JSON do Jackson. `Versão: 2.9.8`

### MySQL
- **mysql-connector-java**: Conector Java para bancos de dados MySQL. `Versão: 8.0.32`

### MyBatis (Framework de Persistência)
- **mybatis**: Biblioteca principal do MyBatis. `Versão: 3.5.6`
- **mybatis-spring**: Integração do MyBatis com o Spring. `Versão: 1.3.0`

### Java Servlet API
- **javax.servlet-api**: API de servlet para construir aplicações servlet. `Versão: 3.0.1`

### Java WebSocket API
- **Java-WebSocket**: Biblioteca para construir aplicações WebSocket. `Versão: 1.5.2`

### Java JSON API
- **javax.json-api**: API JSON para processamento JSON. `Versão: 1.1.4`
- **javax.json**: Implementação do Glassfish para processamento JSON. `Versão: 1.1.4`

### Apache Commons
- **commons-codec**: Biblioteca para codificação e decodificação de dados. `Versão: 1.14`
- **commons-dbcp**: Pool de conexões de banco de dados. `Versão: 1.2.2`
- **commons-fileupload**: Biblioteca para manipulação de uploads de arquivos. `Versão: 1.3.1`
- **commons-io**: Biblioteca para operações de E/S. `Versão: 2.5`

### JSTL (JSP Standard Tag Library)
- **jstl**: Biblioteca de tags padrão para JSP. `Versão: 1.2`

### Logging
- **log4j**: Biblioteca de logging. `Versão: 1.2.17`
- **slf4j-api**: API de abstração de logging. `Versão: 1.7.7`
- **slf4j-log4j12**: Implementação do SLF4J para Log4J. `Versão: 1.7.7`

### Outras Dependências
- **jasperreports**: Biblioteca de relatórios JasperReports. `Versão: 6.2.1`
- **itextpdf**: Biblioteca para manipulação de PDFs. `Versão: 5.5.13.2`
- **olap4j**: Biblioteca para operações OLAP. `Versão: 1.2.0`
- **fastjson**: Biblioteca para processamento rápido de JSON. `Versão: 1.1.41`
- **jackson-mapper-asl**: Biblioteca de mapeamento JSON do Jackson. `Versão: 1.9.13`
- **pagehelper**: Biblioteca de paginação para MyBatis. `Versão: 5.1.4`

## Dependências de Teste
- **junit**: Biblioteca para testes unitários com JUnit. `Versão: 4.13.2`

## Repositórios
O projeto utiliza vários repositórios para resolver suas dependências, incluindo:
- Maven Central
- JBoss
- JCenter (Bintray)
- IBM
- eXo Platform
- JitPack
- Sonatype OSS
- RedHat GA
- Confluent
- Atlassian
- Apache Snapshots
- Sonatype
- JBoss EA
- Microsoft
- Google
- Oracle
- JasperReports
- Jaspersoft Third-Party
- Repositório local

## Plugins do Maven
O projeto utiliza diversos plugins do Maven para gerenciar o ciclo de vida do build:
- **maven-clean-plugin**: Plugin para limpeza. `Versão: 3.1.0`
- **maven-resources-plugin**: Plugin para recursos. `Versão: 3.0.2`
- **maven-compiler-plugin**: Plugin para compilação. `Versão: 3.8.0`
- **maven-surefire-plugin**: Plugin para testes. `Versão: 2.22.1`
- **maven-jar-plugin**: Plugin para criação de JARs. `Versão: 3.0.2`
- **maven-install-plugin**: Plugin para instalação. `Versão: 2.5.2`
- **maven-deploy-plugin**: Plugin para deploy. `Versão: 2.8.2`
- **maven-dependency-plugin**: Plugin para gerenciamento de dependências. `Versão: 3.2.0`

Este documento fornece uma visão geral das dependências e configurações usadas no projeto para ajudar a entender melhor as tecnologias e bibliotecas envolvidas.
