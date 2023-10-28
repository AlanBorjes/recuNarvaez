GNU nano 6.2                                                                                         Dockerfile                                                                                                  
# Utiliza una imagen de Java 17 como base para la etapa de ejecución
FROM openjdk:17.0.2-jdk

# Copia el archivo JAR generado desde el contenedor de compilación
COPY gpds-api.jar /app.jar

# Expone el puerto en el que se ejecuta tu aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación cuando se inicie el contenedor
CMD ["java", "-jar", "/app.jar"]
