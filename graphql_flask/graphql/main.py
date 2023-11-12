import graphene
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

from query import Query

schema = graphene.Schema(query=Query)

dpto_value = "Vichada"

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
plt.figure(figsize=(10, 8))

# Extraer el diccionario de la respuesta GraphQL
data_dict = result_.data['modelDpto'][0]

# Convertir el diccionario en una Serie de Pandas
dpto_importances = pd.Series(data_dict)
dpto_importances.sort_values(ascending=True, inplace=True)

# Crear un gráfico de barras horizontal con un color más agradable
ax = dpto_importances.plot.barh(color='#86bf91', zorder=2)

# Quitar los bordes de la gráfica
ax.spines['right'].set_visible(False)
ax.spines['top'].set_visible(False)
ax.spines['left'].set_visible(False)

# Quitar los ticks del eje y
ax.tick_params(axis="y", which="both", left="off", right="off")

# Agregar etiquetas a las barras
for index, value in enumerate(dpto_importances):
    ax.text(value, index, f'{value:.4f}', ha='left', va='center', fontweight='bold', fontsize=10, color='#333333')

# Agregar etiquetas a los ejes y título
plt.xlabel("Importancia", labelpad=20, weight='bold', size=12)
plt.ylabel("Característica", labelpad=20, weight='bold', size=12)
plt.title(dpto_value, weight='bold', size=14)

# Mostrar la gráfica
plt.show()
