#!/bin/bash

# Diretório de download
DOWNLOAD_DIR=~/Downloads/libs

# Criar diretório de download se não existir
mkdir -p $DOWNLOAD_DIR

# Função para baixar e instalar a dependência
install_dependency() {
  local url=$1
  local file_name=$2
  local group_id=$3
  local artifact_id=$4
  local version=$5

  wget -O $DOWNLOAD_DIR/$file_name $url

  mvn install:install-file -Dfile=$DOWNLOAD_DIR/$file_name -DgroupId=$group_id -DartifactId=$artifact_id -Dversion=$version -Dpackaging=jar
}

# Spring dependencies
install_dependency "https://repo1.maven.org/maven2/org/springframework/spring-core/4.3.7.RELEASE/spring-core-4.3.7.RELEASE.jar" "spring-core-4.3.7.RELEASE.jar" "org.springframework" "spring-core" "4.3.7.RELEASE"
install_dependency "https://repo1.maven.org/maven2/org/springframework/spring-beans/4.3.7.RELEASE/spring-beans-4.3.7.RELEASE.jar" "spring-beans-4.3.7.RELEASE.jar" "org.springframework" "spring-beans" "4.3.7.RELEASE"
install_dependency "https://repo1.maven.org/maven2/org/springframework/spring-context/4.3.7.RELEASE/spring-context-4.3.7.RELEASE.jar" "spring-context-4.3.7.RELEASE.jar" "org.springframework" "spring-context" "4.3.7.RELEASE"
install_dependency "https://repo1.maven.org/maven2/org/springframework/spring-context-support/4.3.7.RELEASE/spring-context-support-4.3.7.RELEASE.jar" "spring-context-support-4.3.7.RELEASE.jar" "org.springframework" "spring-context-support" "4.3.7.RELEASE"
install_dependency "https://repo1.maven.org/maven2/org/springframework/spring-web/4.3.7.RELEASE/spring-web-4.3.7.RELEASE.jar" "spring-web-4.3.7.RELEASE.jar" "org.springframework" "spring-web" "4.3.7.RELEASE"
install_dependency "https://repo1.maven.org/maven2/org/springframework/spring-webmvc/4.3.7.RELEASE/spring-webmvc-4.3.7.RELEASE.jar" "spring-webmvc-4.3.7.RELEASE.jar" "org.springframework" "spring-webmvc" "4.3.7.RELEASE"
install_dependency "https://repo1.maven.org/maven2/org/springframework/spring-tx/4.3.7.RELEASE/spring-tx-4.3.7.RELEASE.jar" "spring-tx-4.3.7.RELEASE.jar" "org.springframework" "spring-tx" "4.3.7.RELEASE"
install_dependency "https://repo1.maven.org/maven2/org/springframework/spring-jdbc/4.3.7.RELEASE/spring-jdbc-4.3.7.RELEASE.jar" "spring-jdbc-4.3.7.RELEASE.jar" "org.springframework" "spring-jdbc" "4.3.7.RELEASE"
install_dependency "https://repo1.maven.org/maven2/org/springframework/spring-aop/4.3.7.RELEASE/spring-aop-4.3.7.RELEASE.jar" "spring-aop-4.3.7.RELEASE.jar" "org.springframework" "spring-aop" "4.3.7.RELEASE"
install_dependency "https://repo1.maven.org/maven2/org/springframework/spring-oxm/4.3.7.RELEASE/spring-oxm-4.3.7.RELEASE.jar" "spring-oxm-4.3.7.RELEASE.jar" "org.springframework" "spring-oxm" "4.3.7.RELEASE"
install_dependency "https://repo1.maven.org/maven2/org/springframework/spring-test/4.3.7.RELEASE/spring-test-4.3.7.RELEASE.jar" "spring-test-4.3.7.RELEASE.jar" "org.springframework" "spring-test" "4.3.7.RELEASE"

# Jackson dependencies
install_dependency "https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-core/2.9.8/jackson-core-2.9.8.jar" "jackson-core-2.9.8.jar" "com.fasterxml.jackson.core" "jackson-core" "2.9.8"
install_dependency "https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-databind/2.9.8/jackson-databind-2.9.8.jar" "jackson-databind-2.9.8.jar" "com.fasterxml.jackson.core" "jackson-databind" "2.9.8"
install_dependency "https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.9.8/jackson-annotations-2.9.8.jar" "jackson-annotations-2.9.8.jar" "com.fasterxml.jackson.core" "jackson-annotations" "2.9.8"

# MySQL Connector
install_dependency "https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.36/mysql-connector-java-5.1.36.jar" "mysql-connector-java-5.1.36.jar" "mysql" "mysql-connector-java" "5.1.36"

# MyBatis dependencies
install_dependency "https://repo1.maven.org/maven2/org/mybatis/mybatis/3.5.6/mybatis-3.5.6.jar" "mybatis-3.5.6.jar" "org.mybatis" "mybatis" "3.5.6"
install_dependency "https://repo1.maven.org/maven2/org/mybatis/mybatis-spring/1.3.0/mybatis-spring-1.3.0.jar" "mybatis-spring-1.3.0.jar" "org.mybatis" "mybatis-spring" "1.3.0"

# Additional dependencies
install_dependency "https://repo1.maven.org/maven2/javax/servlet/javax.servlet-api/3.0.1/javax.servlet-api-3.0.1.jar" "javax.servlet-api-3.0.1.jar" "javax.servlet" "javax.servlet-api" "3.0.1"
install_dependency "https://repo1.maven.org/maven2/javax/websocket/javax.websocket-api/1.1/javax.websocket-api-1.1.jar" "javax.websocket-api-1.1.jar" "javax.websocket" "javax.websocket-api" "1.1"
install_dependency "https://repo1.maven.org/maven2/javax/json/javax.json-api/1.1.4/javax.json-api-1.1.4.jar" "javax.json-api-1.1.4.jar" "javax.json" "javax.json-api" "1.1.4"
install_dependency "https://repo1.maven.org/maven2/org/glassfish/javax.json/1.1.4/javax.json-1.1.4.jar" "javax.json-1.1.4.jar" "org.glassfish" "javax.json" "1.1.4"
install_dependency "https://repo1.maven.org/maven2/commons-codec/commons-codec/1.14/commons-codec-1.14.jar" "commons-codec-1.14.jar" "commons-codec" "commons-codec" "1.14"
install_dependency "https://repo1.maven.org/maven2/commons-dbcp/commons-dbcp/1.2.2/commons-dbcp-1.2.2.jar" "commons-dbcp-1.2.2.jar" "commons-dbcp" "commons-dbcp" "1.2.2"
install_dependency "https://repo1.maven.org/maven2/commons-fileupload/commons-fileupload/1.3.1/commons-fileupload-1.3.1.jar" "commons-fileupload-1.3.1.jar" "commons-fileupload" "commons-fileupload" "1.3.1"
install_dependency "https://repo1.maven.org/maven2/commons-io/commons-io/2.5/commons-io-2.5.jar" "commons-io-2.5.jar" "commons-io" "commons-io" "2.5"
install_dependency "https://repo1.maven.org/maven2/javax/servlet/jstl/1.2/jstl-1.2.jar" "jstl-1.2.jar" "javax.servlet" "jstl" "1.2"
install_dependency "https://repo1.maven.org/maven2/log4j/log4j/1.2.17/log4j-1.2.17.jar" "log4j-1.2.17.jar" "log4j" "log4j" "1.2.17"
install_dependency "https://repo1.maven.org/maven2/com/alibaba/fastjson/1.1.41/fastjson-1.1.41.jar" "fastjson-1.1.41.jar" "com.alibaba" "fastjson" "1.1.41"
install_dependency "https://repo1.maven.org/maven2/org/slf4j/slf4j-api/1.7.7/slf4j-api-1.7.7.jar" "slf4j-api-1.7.7.jar" "org.slf4j" "slf4j-api" "1.7.7"
install_dependency "https://repo1.maven.org/maven2/org/slf4j/slf4j-log4j12/1.7.7/slf4j-log4j12-1.7.7.jar" "slf4j-log4j12-1.7.7.jar" "org.slf4j" "slf4j-log4j12" "1.7.7"
install_dependency "https://repo1.maven.org/maven2/org/codehaus/jackson/jackson-mapper-asl/1.9.13/jackson-mapper-asl-1.9.13.jar" "jackson-mapper-asl-1.9.13.jar" "org.codehaus.jackson" "jackson-mapper-asl" "1.9.13"
install_dependency "https://repo1.maven.org/maven2/com/github/pagehelper/pagehelper/5.1.4/pagehelper-5.1.4.jar" "pagehelper-5.1.4.jar" "com.github.pagehelper" "pagehelper" "5.1.4"
install_dependency "https://repo1.maven.org/maven2/com/ibm/websphere/uow/6.0.2.17/uow-6.0.2.17.jar" "uow-6.0.2.17.jar" "com.ibm.websphere" "uow" "6.0.2.17"


# Dependências a serem instaladas
install_dependency "https://repo1.maven.org/maven2/com/itextpdf/itextpdf/5.5.13.2/itextpdf-5.5.13.2.jar" "itextpdf-5.5.13.2.jar" "com.itextpdf" "itextpdf" "5.5.13.2"
install_dependency "https://repo1.maven.org/maven2/org/java-websocket/Java-WebSocket/1.5.2/Java-WebSocket-1.5.2.jar" "Java-WebSocket-1.5.2.jar" "org.java-websocket" "Java-WebSocket" "1.5.2"
install_dependency "https://repo1.maven.org/maven2/org/olap4j/olap4j/0.9.7/olap4j-0.9.7.jar" "olap4j-0.9.7.jar" "org.olap4j" "olap4j" "0.9.7"

# Forçar a atualização das dependências do Maven
mvn clean install -U

mvn dependency:go-offline clean install
