# Use an official Java runtime as a parent image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/employee-crud-0.0.1-SNAPSHOT.jar /app/employee-crud.jar

# Define the command to run the application
CMD ["java", "-jar", "/app/employee-crud.jar"]
