from flask import Flask, request, jsonify

app = Flask(__name__)

@app.get('/{dpto}')
def obtener(dpto: str):
    
    dpto_value = dpto

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

    return query

if __name__=='__main__':

    app.run()