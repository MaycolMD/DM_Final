from flask import Flask, render_template
import graphene
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from query import Query

import mpld3

app = Flask(__name__)

# Configuración de GraphQL Schema
schema = graphene.Schema(query=Query)

@app.get('/<dpto>')
def obtener(dpto: str):
    dpto_value = dpto

    print(dpto_value)

    query = f"""
    {{
    modelDpto(dpto: "{dpto_value}") {{
        dpto
        logroEducativo
        alfabetismo
        rezagoEscolar
        inasistenciaEscolar
        atencionIntegral
        trabajoInfantil
        aseguramientoSalud
        barrerasAccesoSalud
        empleoFormal
        desempleoLargaDuracion
        acueducto
        alcantarillado
        pisos
        paredes
        hacinamiento
    }}
    }}
    """

    result_ = schema.execute(query)

    # Extraer el diccionario de la respuesta GraphQL
    data_dict = result_.data['modelDpto'][0]
    dpto_value = data_dict.pop('dpto', None)

    # Convertir el diccionario en una Serie de Pandas
    pandas_series = pd.Series(data_dict)

    # Establecer un estilo de fondo blanco con bordes de las barras
    sns.set(style="whitegrid")

    # Ajustar el tamaño de la figura
    plt.figure(figsize=(8, 6))

    # Extraer el diccionario de la respuesta GraphQL
    data_dict = result_.data['modelDpto'][0]

    # Convertir el diccionario en una Serie de Pandas
    dpto_importances = pd.Series(data_dict)
    dpto_importances.sort_values(ascending=True, inplace=True)

    # Crear un gráfico de barras horizontal con un color más agradable
    
    fig, ax = plt.subplots(figsize=(12, 9))

    ax.xaxis.grid(False)
    ax.yaxis.grid(False)

    ax.barh(dpto_importances.index, dpto_importances.values, color='#86bf91', zorder=2)

    # Quitar los bordes de la gráfica
    ax.spines['right'].set_visible(False)
    ax.spines['top'].set_visible(False)
    ax.spines['left'].set_visible(False)

    # Quitar los ticks del eje y
    ax.tick_params(axis="y", which="both", left="off", right="off")

    # Ajustar el espaciado entre las etiquetas
    plt.subplots_adjust(left=0.2)
    plt.yticks(range(len(dpto_importances)), dpto_importances.index)

    # Agregar etiquetas a las barras
    for index, value in enumerate(dpto_importances):
        ax.text(value, index, f'{value:.4f}', ha='left', va='center', fontweight='bold', fontsize=15, color='#333333')

    # Agregar etiquetas a los ejes y título
    plt.xlabel("Importancia", labelpad=20, weight='bold', size=20)
    plt.ylabel("Característica", labelpad=20, weight='bold', size=20)
    plt.title(dpto_value, weight='bold', size=28)

    # Convertir la figura de Matplotlib a un formato HTML que puede ser renderizado en el navegador
    plot_html = mpld3.fig_to_html(fig)
    plt.close(fig)

    return render_template('index.html', plot_html=plot_html)

if __name__ == '__main__':
    app.run(debug=True)
