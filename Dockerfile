FROM maven:latest AS build
WORKDIR /app
COPY . .
RUN mvn clean package DskipTests


FROM eclipse-temurin:17-jre-jammy
EXPOSE 8080
ADD target/lab2p2026.jar lab2p2026.jar
ENTRYPOINT ["java","-jar","/lab2p2026.jar"]

