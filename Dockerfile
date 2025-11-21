# Using a Java runtime image
FROM eclipse-temurin:17-jre-alpine

# Setting working directory
WORKDIR /app

# Copy my built jar into the container
COPY target/*.jar app.jar

# Expose port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
