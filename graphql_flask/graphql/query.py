import joblib, graphene
from modeloPorDepartamento import modeloPorDepartamento
import pandas as pd

inputs = ['logro_educativo', 'alfabetismo', 'rezago_escolar', 'inasistencia_escolar', 'atencion_integral', 'trabajo_infantil', 'aseguramiento_salud', 'barreras_acceso_salud',
'empleo_formal','desempleo_larga_duracion','acueducto','alcantarillado','pisos','paredes','hacinamiento']

output = ['ipm']

class Query(graphene.ObjectType):
  modelDpto = graphene.List(modeloPorDepartamento, dpto=graphene.String())

  def resolve_modelDpto(self, info, dpto):

    rf = joblib.load(f'models\modelo_{dpto}.joblib')
    global_importances = pd.Series(rf.feature_importances_, index=inputs)

    return [modeloPorDepartamento(
        dpto = dpto,

        logroEducativo = global_importances['logro_educativo'],
        alfabetismo = global_importances['alfabetismo'],
        rezagoEscolar = global_importances['rezago_escolar'],
        inasistenciaEscolar = global_importances['inasistencia_escolar'],
        atencionIntegral = global_importances['atencion_integral'],
        trabajoInfantil = global_importances['trabajo_infantil'],
        aseguramientoSalud = global_importances['aseguramiento_salud'],
        barrerasAccesoSalud = global_importances['barreras_acceso_salud'],
        empleoFormal = global_importances['empleo_formal'],
        desempleoLargaDuracion = global_importances['desempleo_larga_duracion'],
        acueducto = global_importances['acueducto'],
        alcantarillado = global_importances['alcantarillado'],
        pisos = global_importances['pisos'],
        paredes = global_importances['paredes'],
        hacinamiento = global_importances['hacinamiento'],

        )]