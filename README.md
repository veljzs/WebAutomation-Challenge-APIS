# Project Automatización APIS con Karate

## Prerequisitos
- **IDE:** IntelliJ versión 2024.1.3
- **Maven:** versión 3.9.1 (debe estar en la variable de entorno)
- **JDK:** versión 1.8 o 11 (debe estar en la variable de entorno)

## Comandos de instalación
- `mvn install -DskipTests` (descarga todas las dependencias del POM)

## Instrucciones para ejecutar los test
- Ir a `src/test/resources/demoblaze-Api-Test.feature`
- **Importante:** Cambia el `username` y `password` a los datos del nuevo usuario que deseas crear. Utiliza estos mismos datos para todos los escenarios, excepto para el de **Usuario y password incorrecto en login**.
- Correr el test desde la línea: **Feature: Signup y Login API Tests**

### Generar Reporte

Después de ejecutar los tests:

- Seleccionar el enlace mostrado al final de la ejecución de los tests o ir a `target/karate-reports/karate-summary.html`.
- Hacer clic derecho en el archivo, seleccionar "Abrir en" y elegir el navegador donde se desea abrir el reporte.