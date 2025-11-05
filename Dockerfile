# Use Eclipse Temurin (OpenJDK) 17
FROM eclipse-temurin:17-jdk-alpine

# Maintainer info
LABEL maintainer="g.anilkumar@clonetab.com"

# Set working directory inside container
WORKDIR /app

# Copy JAR file from target folder to /app
COPY target/learnDocker.controller-0.0.1-SNAPSHOT.jar /app/learnDocker.controller-0.0.1-SNAPSHOT.jar

# Expose default Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "learnDocker.controller-0.0.1-SNAPSHOT.jar"]
