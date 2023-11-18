from flask import Flask, render_template, request
import graphene
import pandas as pd

import matplotlib
matplotlib.use('Agg')

import matplotlib.pyplot as plt
import seaborn as sns
from query import Query

import mpld3
import numpy as np

app = Flask(__name__)

# Configuración de GraphQL Schema
schema = graphene.Schema(query=Query)

@app.route('/')
def main():
    return render_template('index.html')

@app.route('/consulta')
def consulta():
    return render_template('consulta.html')

@app.route('/mapa')
def mapa():
    return render_template('mapa.html')


@app.route('/dpto', methods=['GET'])
def obtener():
    departamentos = {
        'Amazonas': 'Amazonas',
        'Antioquia': 'Antioquia',
        'Arauca': 'Arauca',
        'Atlantico': 'Atlántico',
        'Bolivar': 'Bolívar',
        'Boyaca': 'Boyacá',
        'Bogota D.C.': 'Bogotá, D.C.',
        'Caldas': 'Caldas',
        'Caqueta': 'Caquetá',
        'Casanare': 'Casanare',
        'Cauca': 'Cauca',
        'Cesar': 'Cesar',
        'Choco': 'Chocó',
        'Cordoba': 'Córdoba',
        'Cundinamarca': 'Cundinamarca',
        'Guainia': 'Guainía',
        'Guaviare': 'Guaviare',
        'Huila': 'Huila',
        'La Guajira': 'La Guajira',
        'Magdalena': 'Magdalena',
        'Meta': 'Meta',
        'Narino': 'Nariño',
        'Norte de Santander': 'Norte de Santander',
        'Putumayo': 'Putumayo',
        'Quindio': 'Quindío',
        'Risaralda': 'Risaralda',
        'San Andres': 'San Andrés y Providencia',
        'Santander': 'Santander',
        'Sucre': 'Sucre',
        'Tolima': 'Tolima',
        'Valle del Cauca': 'Valle del Cauca',
        'Vaupes': 'Vaupés',
        'Vichada': 'Vichada'
    }

    mapping = {
        'AMAZONAS': 'Amazonas',
        'ANTIOQUIA': 'Antioquia',
        'ARAUCA': 'Arauca',
        'ATLANTICO': 'Atlantico',
        'BOLIVAR': 'Bolivar',
        'BOYACA': 'Boyaca',
        'SANTAFE DE BOGOTA D.C': 'Bogota D.C.',
        'CALDAS': 'Caldas',
        'CAQUETA': 'Caqueta',
        'CASANARE': 'Casanare',
        'CAUCA': 'Cauca',
        'CESAR': 'Cesar',
        'CHOCO': 'Choco',
        'CORDOBA': 'Cordoba',
        'CUNDINAMARCA': 'Cundinamarca',
        'GUAINIA': 'Guainia',
        'GUAVIARE': 'Guaviare',
        'HUILA': 'Huila',
        'LA GUAJIRA': 'La Guajira',
        'MAGDALENA': 'Magdalena',
        'META': 'Meta',
        'NARINO': 'Narino',
        'NORTE DE SANTANDER': 'Norte de Santander',
        'PUTUMAYO': 'Putumayo',
        'QUINDIO': 'Quindio',
        'RISARALDA': 'Risaralda',
        'SAN ANDRES': 'San Andres y Providencia',
        'SANTANDER': 'Santander',
        'SUCRE': 'Sucre',
        'TOLIMA': 'Tolima',
        'VALLE DEL CAUCA': 'Valle del Cauca',
        'VAUPES': 'Vaupes',
        'VICHADA': 'Vichada'
    }

    dpto_value = request.args.get('departamento')

    print(dpto_value)

    query = f"""
    {{
    modelDpto(dpto: "{mapping[dpto_value]}") {{
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

    # Establecer un estilo de fondo blanco con bordes de las barras
    sns.set(style="whitegrid")

    # Crear un gráfico de barras horizontal con un color más agradable
    fig, ax = plt.subplots(figsize=(12, 9))

    # Convertir el diccionario en una Serie de Pandas
    dpto_importances = pd.Series(data_dict)
    dpto_importances.index = ['Bajo Logro Educativo', 'Analfabetismo',
                                'Rezago Escolar',
                                'Inasistencia Escolar',
                                'Atención Integral a la Primera Infancia ',
                                'Trabajo Infantil', 'Aseguramiento en salud ',
                                'Barreras de acceso a salud', 'Tasa de Empleo Formal',
                                'Desempleo de Larga Duración',
                                'Acceso a fuente de agua mejorada ',
                                'Inadecuado alcantarillado ',
                                'Inadecuado material de pisos',
                                'Inadecuado material de paredes exteriores',
                                'Hacinamiento crítico']
    dpto_importances.sort_values(ascending=True, inplace=True)

    # Formatear los valores en las barras
    for index, value in enumerate(dpto_importances):
        ax.text(value+0.004, index, f'{value:.2%}', ha='left', va='center', fontweight='bold', fontsize=16, color='#333333')

    # Agregar etiquetas a los ejes y título
    plt.xlabel("Importancia", labelpad=20, weight='bold', size=22)
    plt.ylabel("Característica", labelpad=20, weight='bold', size=22)
    plt.title(departamentos[dpto_value], weight='bold', size=26)

    ax.xaxis.grid(False)
    ax.yaxis.grid(False)

    # Utilizar una paleta de colores más atractiva
    colors = sns.color_palette("Blues", len(dpto_importances))

    # Crear el gráfico de barras con la nueva paleta de colores
    ax.barh(dpto_importances.index, dpto_importances.values, color=colors, zorder=2, edgecolor='k', linewidth=1.5)

    # Quitar los bordes de la gráfica
    ax.spines['right'].set_visible(False)
    ax.spines['top'].set_visible(False)
    ax.spines['left'].set_visible(False)

    # Ajustar el espaciado entre las etiquetas
    plt.yticks(range(len(dpto_importances)), dpto_importances.index, fontsize=17)

    plt.savefig('./static/images/dpto.png', bbox_inches='tight', dpi=100)
    # Convertir la figura de Matplotlib a un formato HTML que puede ser renderizado en el navegador
    plt.close(fig)
  
    return render_template('dpto.html', name = dpto_value, url ='/static/images/dpto.png')


if __name__ == '__main__':
    app.run(debug=True)
