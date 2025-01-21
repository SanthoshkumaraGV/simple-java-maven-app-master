# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
#COPY target/hello-world-1.0.0.jar app.jar
COPY target/my-app-1.0-SNAPSHOT.jar app.jar
# Expose the port
EXPOSE 8082

# Run the application
#RUN chmod +x /path/to/myapp.jar
RUN chmod +X /var/lib/jenkins/workspace/simple maven22/target/my-app-1.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "target/app.jar"]
