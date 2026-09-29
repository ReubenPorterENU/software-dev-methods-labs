# Start from an image that already has Java 17
FROM eclipse-temurin:17
# Copy the built JAR into the container
COPY ./target/app-jar-with-dependencies.jar /tmp
# Work from that folder
WORKDIR /tmp
# Run the JAR when the container starts
ENTRYPOINT ["java", "-jar", "app-jar-with-dependencies.jar"]