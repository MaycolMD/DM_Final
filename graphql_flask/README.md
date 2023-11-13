## Ejecución del Proyecto

Para ejecutar correctamente este proyecto, necesitas seguir los siguientes pasos:

### 1. Descargar el repositorio, descomprimirlo y ubicarlo en alguna carpeta, o traerlo directamente desde GitHub haciendo un clone con:
```bash
    git clone https://github.com/MaycolMD/DM_Final.git
```

### 2. Ubicado en la carpeta graphql_flask, crea el entorno virtual
```bash
    cd graphql_flask
```
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

### 4. Ahora, instalamos las dependencias necesarias con el archivo requirements.txt
```bash
    pip install -r .\requirements.txt
```

### 5. Nos localizamos en la carpeta relacionada al proyecto Flask & GraphQL
```bash
    cd graphql
```

### Finalmente, para ejecutar el programa main.py:
```bash
    python .\main.py
```
En localhost, la ruta para acceder al sitio web es:
```bash
    http://127.0.0.1:5000/
```
