import graphene

class modeloPorDepartamento(graphene.ObjectType):

  dpto = graphene.String()

  logroEducativo = graphene.Float()
  alfabetismo = graphene.Float()
  rezagoEscolar = graphene.Float()
  inasistenciaEscolar = graphene.Float()
  atencionIntegral = graphene.Float()
  trabajoInfantil = graphene.Float()
  aseguramientoSalud = graphene.Float()
  barrerasAccesoSalud = graphene.Float()
  empleoFormal = graphene.Float()
  desempleoLargaDuracion = graphene.Float()
  acueducto = graphene.Float()
  alcantarillado = graphene.Float()
  pisos = graphene.Float()
  paredes = graphene.Float()
  hacinamiento = graphene.Float()