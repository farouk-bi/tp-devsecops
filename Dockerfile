# Image de base avec Java
FROM eclipse-temurin:17-jdk-alpine

# Définition du répertoire de travail dans le conteneur
WORKDIR /app

# Copie du fichier .jar compilé depuis votre machine vers le conteneur
COPY target/*.jar app.jar

# Exposition du port utilisé par l'application (généralement 8080 pour Spring Boot)
EXPOSE 8080

# Commande de démarrage de l'application
ENTRYPOINT ["java", "-jar", "app.jar"]