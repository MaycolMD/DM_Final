# DM_Final
Este proyecto utiliza datos del DANE para predecir el Índice de Pobreza Multidimensional en Colombia entre 2018 y 2022. Se emplean técnicas avanzadas de SKLearn para desarrollar modelos de aprendizaje automático, integrados con BigQuery para la gestión eficiente de grandes volúmenes de datos. La arquitectura incluye GraphQL y Flask para ofrecer una interfaz dinámica que facilita la visualización y consulta de datos específicos según las necesidades del usuario.

# Proyecto de Índice de Pobreza Multidimensional en Colombia
## Objetivo
Este proyecto tiene como objetivo principal predecir el Índice de Pobreza Multidimensional (IPM) en Colombia utilizando un conjunto de datos recopilado por el DANE de Hogares, Personas y Viviendas. El enfoque se centra en la aplicación de técnicas avanzadas de minería de datos, específicamente mediante el uso de algoritmos de aprendizaje automático proporcionados por la biblioteca SKLearn de Python.

## Arquitectura del Proyecto
La arquitectura del proyecto se basa en una integración eficiente de tecnologías clave:

BigQuery: Se emplea para la gestión y consulta eficiente de datos a gran escala, permitiendo un manejo efectivo del conjunto de datos recopilado entre 2018 y 2022.

SKLearn: Se utiliza para desarrollar modelos de predicción del IPM, aprovechando las capacidades de aprendizaje automático para mejorar la precisión de nuestras estimaciones.

GraphQL y Flask: Estos se combinan para crear una interfaz de usuario dinámica y eficiente. GraphQL facilita la obtención de datos específicos según las necesidades del cliente, y Flask proporciona una plataforma robusta para exponer estos datos de manera amigable y visualmente atractiva.

## Variables de Interés
El conjunto de datos abarca una amplia variedad de variables relacionadas con hogares, personas y viviendas. Algunas de las variables de interés incluyen la composición del hogar, nivel educativo, condiciones de vivienda, y otras preguntas clave relacionadas con la medición del IPM.

## Período de Tiempo
El conjunto de datos abarca el período comprendido entre 2018 y 2022, permitiendo un análisis a lo largo de múltiples años para identificar tendencias y patrones.

## Cómo Iniciar
Clone el repositorio: 
```bash
    git clone https://github.com/MaycolMD/DM_Final.git
```

Ubicado en la carpeta graphql_flask, asegúrese de tener las dependencias instaladas:
Inicie su ambiente virtual,
```bash
    python -m venv venv
```

Acceda a su ambiente virtual,
En Windows,
```bash
    .\venv\Scripts\activate
```
en Linux,
```bash
    source venv/bin/activate
```

Instale las dependencias necesarias,
```bash
    pip install -r requirements.txt
```

Ubicado en la carpeta graphql_flask/graphql, Ejecute la aplicación Flask: 
```bash
    python main.py
```

