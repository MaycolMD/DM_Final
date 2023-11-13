## Ejecución del Proyecto

Para ejecutar correctamente este proyecto, necesitas seguir los siguientes pasos:

### 1. Descargar el repositorio, descomprimirlo y ubicarlo en alguna carpeta, o traerlo directamente desde GitHub haciendo un clone con:
```bash
    git clone https://github.com/MaycolMD/DM_Final.git
```

### 2. Ubicado en la carpeta dbt, crea el entorno virtual
```bash
    python -m venv venv
```

### 3. Una vez creado el entorno, accede a él.
para Windows
```bash
    venv\Scripts\activate
```
para MacOS y Linux
```bash
    source venv/bin/activate
```

### 4. Ahora, instalamos las dependencias necesarias
```bash
    pip install dbt-core dbt-bigquery
```

### Finalmente, dependiendo de lo que queramos hacer, ejecutamos el comando respectivo
para ejecutar un test del proyecto dbt:
```bash
    dbt test
```
para ejecutar completamente el dbt con todos sus modelos:
```bash
    dbt run
```
para ejecutar únicamente la carpeta deseada:
```bash
    dbt run -m nombreCarpeta
```

Para ver la documentación del proyecto más detallada,

Para generarla
```bash
    dbt docs generate
```
Para mostrarla
```bash
    dbt docs serve
```
