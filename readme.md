# Ejercicio de APIs con Karate

Este proyecto contiene un ejercicio de pruebas de APIs utilizando Karate.
El objetivo es interactuar con los usuarios (Crear, Leer, Modificar, Eliminar) de API de la PetStore, documentada en https://petstore.swagger.io/.

## Instrucciones

Para ejecutar este proyecto, necesitarás tener instalado:

- IntelliJ IDEA 2023.3.3
- Gradle 7.6.1: Es **muy importante** que tengas Gradle en tus variables de entorno. Si no sabes cómo hacerlo, puedes seguir esta [guía](https://www.youtube.com/watch?v=esygQzIRKBQ).
- Karate se instalará automáticamente al ejecutar el proyecto junto a otras dependencias necesarias.


Si eres un desarrollador y quieres modificar este proyecto, también necesitarás los siguientes plugins  en tu IDE:

- Cucumber +
- Cucumber for Java
- Gherkin

> **Importante:** Este proyecto se ha desarrollado y probado en un entorno Windows 11.


## Instalación
1. Clona este repositorio en tu máquina local.

## Ejecución de las pruebas y Visualización de reporte

1. Navega hasta el directorio del proyecto en tu terminal.
2. Ejecuta las pruebas con `gradlew test --info`.
3. Una vez que las pruebas se hayan ejecutado , Karate generará un informe en HTML. Puedes encontrar el enlace al informe de Serenity en la salida de la consola después de ejecutar las pruebas. Busca la línea que comienza con `HTML report: `. Al hacer clic en el enlace, serás redirigido a tu navegador predeterminado para visualizar el informe. Por ejemplo:


> ```plaintext
>   HTML report: (paste into browser to view) | Karate version: 1.2.0.RC5
>    file:///C:/Users/josue/IdeaProjects/karate-petstore-user/build/karate-reports/karate-summary.html
>   ===================================================================

También puedes encontrar los informes dentro del proyecto. Se encuentra en el directorio dentro `karate-petstore-user/build/karate-reports/`.

4. Tambien podras ver el reporte de Cucumber en la ruta del proyecto `/karate-petstore-user/build/cucumber-html-reports/overview-features.html`

## Más información

Para más detalles sobre cómo ejecutar este proyecto y los hallazgos del ejercicio, consulta los archivos `readme.txt` y `conclusiones.txt` respectivamente.
