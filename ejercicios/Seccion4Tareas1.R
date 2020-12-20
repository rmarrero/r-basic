## Calculo de tiempo (Tarea1)

SegundosEnUnDias = 24*60*60

DiasTotal = 250000000%/%SegundosEnUnDias

AñosTotales = DiasTotal%/%365

## no logré sacar por scipt el resto de la division que es (0.92)

DiasTotales1 = trunc(0.92*365)

## Como desde 2018 hay 2 bisisiestos (2020 y 2024)

DiasTotales = DiasTotales1 + 2

##Igual con con resto de esta division (0.80)

HorasTotales = trunc(0.80*24)

print("Desde 2018, hemos llegado a los 250M segundos, el:")
print(2018+AñosTotales)
print(DiasTotales)
print(HorasTotales)

## Funciones (Tarea2)

ecuacion = function(m,n,r){
  (m-n)/r
}
ecuacion (0,4,2)
ecuacion (0,3,5)
ecuacion (1,1,1)

## Expresiones (Tarea3)

round(exp(1)-pi,3)

Z = (2+3i)^2/5+8i
round(Mod(Z),3)

