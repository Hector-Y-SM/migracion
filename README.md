# Migración de Datos al Servidor

## Método Elegido
Se optó por completar los campos faltantes (Primary Key) en cada tabla utilizando Google Sheets y AppScript para generar las claves primarias (PK). Las tablas fueron normalizadas hasta la tercera forma normal (3NF).

## Problemas y Soluciones

### 1. Generación de Primary Keys
**Problema:**
El archivo original contenía un único identificador para todos los registros, ya que estaba en una sola tabla. Al normalizar las tablas, la mayoría de los registros quedaron sin clave primaria.

**Solución:**
Se utilizó AppScript para iterar sobre los registros de cada tabla y asignarles una PK en formato UUID.

**Código utilizado en AppScript:**
```javascript
function generarUUIDs() {
  var hoja = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
  var datos = hoja.getDataRange().getValues();
  var columnaID = 1;
  var nuevosIDs = [];

  for (var i = 0; i < datos.length; i++) {
    nuevosIDs.push([Utilities.getUuid()]);
  }

  hoja.getRange(1, columnaID, nuevosIDs.length, 1).setValues(nuevosIDs);
}

generarUUIDs();
```
Una vez que todas las tablas tienen su PK, se pueden establecer relaciones mediante claves foráneas (FK).

### 2. Subida de Archivos a MySQL
**Problema:**
Para cargar los archivos en MySQL, deben ubicarse en un directorio accesible por el servidor.

**Solución:**
Los archivos CSV fueron almacenados en la ubicación (en este proyecto estan en la carpeta "csv"):

```
/var/lib/mysql-files/<nombre_archivo>.csv
```
Luego, se utilizaron los comandos dentro de `upload` para importar cada tabla en el servidor.

---
Este proceso asegura la correcta migración y estructuración de los datos en la base de datos MySQL.