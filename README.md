# Project Automatización APIS con Karate

## Prerequisitos
- **IDE:** IntelliJ versión 2024.1.3
- **Maven:** versión 3.9.1 (debe estar en la variable de entorno)
- **JDK:** versión 1.8 o 11 (debe estar en la variable de entorno)

## Comandos de instalación
- `mvn install -DskipTests` (descarga todas las dependencias del POM)

## Instrucciones para ejecutar los test
- Verificar que se tenga los `Plugin Cucumber for Java` y `Gherkin`
- Navega a `src/test/java/com.challenge/KarateRunner.java`.
- Ejecuta la prueba dando clic derecho en `KarateRunner.java` y seleccionando `Run 'KarateRunner'`.
- También puedes ejecutar el `KarateRunner.java` abriendo el archivo y dando clic en el botón de play verde a la izquierda de la línea `public class KarateRunner` y seleccionando la opción `Run 'KarateRunner'`. O dando clic derecho dentro del archivo y seleccionando `Run 'KarateRunner'`.

- **Importante:** Dentro de archivo `src/test/resources/data/userData.json` se encuentran los datos que se usaran para la prueba. En el primer objeto del json cambiar el `username` y `password` a los datos del **nuevo usuario que deseas crear**. El segundo objeto del json sera usado solo en el escenario **Usuario y password incorrecto en login**.

### Generar Reporte

Después de ejecutar los tests:

- Seleccionar el enlace mostrado al final de la ejecución de los test para abrir el reporte.
- Si no le redirige automaticamente, copiar el enlace y pégalo en un navegador para abrir el reporte.
- También puede ir a `target/karate-reports/karate-summary.html` , dar clic derecho en el archivo, seleccionar "Abrir con" y elegir el navegador donde deseas ver el reporte.