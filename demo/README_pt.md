# Demonstração de Dispositivo de Impressão Digital

Este projeto é uma aplicação de demonstração para um dispositivo de impressão digital, utilizando o framework SSM e o protocolo WebSocket para comunicação. A aplicação usa a biblioteca `java.org_websocket` para implementar a interface WebSocket.

## Índice
- [Ambiente de Desenvolvimento](#ambiente-de-desenvolvimento)
- [Instruções de Configuração](#instruções-de-configuração)
- [Configuração](#configuração)
- [Executando o Projeto](#executando-o-projeto)
- [Esquema de Banco de Dados](#esquema-de-banco-de-dados)

## Ambiente de Desenvolvimento
- JDK 1.8
- Eclipse IDE para Desenvolvedores Java EE ou IntelliJ IDEA Community
- Maven 3.5 e superior
- Tomcat 7.0.99
- MySQL 5.7 e superior

## Instruções de Configuração

1. **Clonar o Repositório:**
   ```bash
   git clone https://github.com/igorferreira/FingerprintDeviceDemo.git
   cd FingerprintDeviceDemo
   ```

2. **Importar o Projeto no Eclipse ou IntelliJ IDEA:**
    - **Eclipse:**
        - Abra o Eclipse IDE.
        - Vá em `File -> Import -> Existing Maven Projects`.
        - Selecione o diretório do repositório clonado.
        - Clique em `Finish`.
    - **IntelliJ IDEA:**
        - Abra o IntelliJ IDEA.
        - Vá em `File -> New -> Project from Existing Sources`.
        - Selecione o diretório do repositório clonado.
        - Escolha `Import project from external model -> Maven`.
        - Clique em `Finish`.

3. **Configurar o Banco de Dados MySQL:**
    - Inicie seu servidor MySQL.
    - Importe o esquema do banco de dados a partir do arquivo `fingerprint.sql`:
      ```sql
      mysql -u username -p database_name < /path/to/fingerprint.sql
      ```

4. **Instalar e Configurar o Tomcat 7.0.99:**
    - **Download do Tomcat:**
        - Baixe o Tomcat 7.0.99 do [site oficial](https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.99/bin/).
    - **Instalar o Tomcat:**
        - Extraia o arquivo baixado para um diretório de sua preferência.
    - **Configurar o Tomcat no Eclipse:**
        - Vá em `Window -> Preferences -> Server -> Runtime Environments`.
        - Clique em `Add`, selecione `Apache Tomcat v7.0` e clique em `Next`.
        - Navegue até o diretório onde você extraiu o Tomcat e clique em `Finish`.
    - **Configurar o Tomcat no IntelliJ IDEA:**
        - Vá em `File -> Settings -> Build, Execution, Deployment -> Application Servers`.
        - Clique em `+`, selecione `Tomcat Server`, e navegue até o diretório onde você extraiu o Tomcat.
        - Clique em `Apply` e depois em `OK`.

5. **Abrir a Porta 7788 no Firewall do Windows:**
    - Certifique-se de que a porta 7788 está aberta no seu firewall para permitir a comunicação.

6. **Configurar o IP do Servidor:**
    - Defina o IP do servidor para o IP local do seu computador e configure a rede e a porta do servidor para 7788.
    - Atualize `tomcat/conf/server.xml` para configurar as definições de imagem.

## Configuração

### pom.xml
As dependências do projeto e as configurações de plugins são gerenciadas no arquivo `pom.xml`. Algumas dependências principais incluem:
- Spring Framework
- MyBatis
- MySQL Connector
- Java-WebSocket
- Jackson (para processamento JSON)
- Log4J (para logging)

### Classe Principal
A classe principal para o servidor WebSocket é `WSSServer`. O método `onMessage` lida com os dados recebidos do dispositivo, e a classe `WebSocketPool` gerencia as conexões do dispositivo e a transmissão de dados.

## Executando o Projeto

1. **Iniciar o Servidor Tomcat:**
    - **Eclipse:**
        - No Eclipse, clique com o botão direito no projeto.
        - Selecione `Run As -> Run on Server`.
        - Escolha o servidor Tomcat configurado e clique em `Finish`.
    - **IntelliJ IDEA:**
        - Vá em `Run -> Edit Configurations`.
        - Clique em `+` e selecione `Tomcat Server -> Local`.
        - Configure o artefato para `war` e clique em `Apply` e depois em `OK`.
        - Clique em `Run` para iniciar o servidor.

2. **Operar o Dispositivo:**
    - Certifique-se de que o dispositivo está configurado para se comunicar com o servidor usando o IP e a porta corretos.
    - Os números de backup correspondem a diferentes tipos de dados:
        - `0-9`: Impressão Digital
        - `20-27`: Face (20-23 é a primeira face, 24-27 é outra face)
        - `30-37`: Palma da Mão
        - `50`: Foto

## Esquema de Banco de Dados

O esquema do banco de dados está definido no arquivo `fingerprint.sql`. Inclui tabelas e relacionamentos necessários para armazenar dados de usuários, dados de impressões digitais e outras informações relacionadas.

```sql
-- Exemplo de SQL do arquivo fingerprint.sql
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Mais definições de tabelas...
```

## Recursos Adicionais

- Consulte o documento `TH_Java_SDK_3.5_settingfile.docx` para instruções detalhadas de configuração.
- Para detalhes de protocolo, consulte o documento `websocket+json protocol2.4.pdf`.

Sinta-se à vontade para contribuir com o projeto submetendo pull requests ou relatando problemas.
