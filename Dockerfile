FROM maven:3.6.3-jdk-11-slim
LABEL Author="adigital.team@inbox.ru"

WORKDIR /base
COPY . /base/
RUN cd /base/
RUN mvn install

ENTRYPOINT "java -jar /base/target/spring-boot-dependencies.jar"