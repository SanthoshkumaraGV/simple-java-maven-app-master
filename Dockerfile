# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
#COPY target/hello-world-1.0.0.jar app.jar
COPY target/my-app-1.0-SNAPSHOT.jar app.jar
#RUN chmod +x /target/app.jar
# Expose the port
EXPOSE 8082

# Run the application
#RUN chmod +x /path/to/myapp.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
