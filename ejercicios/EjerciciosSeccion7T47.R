# Como configurar vectores en R

c(1,2,3)

rep("Ricardo",7)


scan()

nombres <- c("Ricardo", "Monica", "Fabiola")

nombres

fix(nombres)

class(nombres)

?scan

vec <- c(16,0,1,20,1,7,88,5,1,9)

vec

fix(vec)

rep(23071975,10)

# Progesiones aritmeticas

seq(1,100, by = 5) ## secuencia de 1 a 100 sumando 5
seq(100,1, by =-5)
seq (1,100,length.out = 10) ## secuencia de 1 a 100 y que nuestre 10 numeros
seq (1, length.out = 10, by = 5) ## secuencia desde el 1, 10 elementos sumando 5

# secuenia de numeros consecutivos
1:10
30:-6

1:20 # imprime los numeros del 1 al 20
seq(2, length.out = 20, by = 2) # imprime los 20 primeros numeros pares
round(seq(17,98, length.out = 30),2) # imprime 30 números equidistantes entre 17 y 98, con 4 cifras
print(seq(17,98, length.out=30),4)

## En la consola se muestra entre [] la posicion del vector

# la letra C del vector, es CONCATENAR

c(1,2,3)
c(rep(7,4), "Ricardo", 5:10) -> Vector
c(Vector, "Marrero")

x = 1:10
x*pi
sqst(x)
sqrt(x)

cuadrado = function(x){x^2}
v = c(1,2,3,4,5,6)
sapply(v, FUN = cuadrado)
mean(v)
cumsum(v)

?sort

## Operaciones con vectores

V = c(3,5,7,3,2,9,23,1,9,24)

sort(rev(V)) # Ordenar el vector de forma inversa
rev(sort(V)) # Invertir las posiciones y ordenarlo
length(V) # longitud del vector
max(V) # elemento máximo
sum(V) #elemento mínimo
prod(V) # multiplicacion de sus elementos
mean(V) #media
sum(V)/length(V)
cumsum(V) # suma de n+siguiente elemento
diff(V) # diferencia de siguiente elemento - n
sort(diff(V))
diff(sort(V))

## Subvectores

V[5] #elemento de a quinta posisición
V[-c(1,4)] # nuevo vector qutando las posiciones 1 y 4

#Como operar con vectores que contienen elementos NA

x[length(x)+5]=9
x
sum(x)
sum(x,na.rm = TRUE)
mean(x, na.rm = TRUE)
which(x == NA)
which(is.na(x))
x[which(is.na(x))]

x
y = x
y[is.na(y)]
y[is.na(y)] = mean(y,na.rm = TRUE)
y
x

## Factores

nombres = c("Monica", "Fabiola", "Daniel", "Carla", "Carla", "Ricardo", "Ricardo")
nombres
nombres.factor = factor(nombres) # es un vector, pero mas enriquecido; crea niveles (etiquetas)
nombres.factor

fac = factor(c(1,1,1,2,2,3,2,4,1,3,3,4,2,3,4,4), 
levels = c(1,2,3,4), labels = c("Sus","Apr","Not","Exc"))
fac

facOrd = ordered(c(1,1,1,2,2,3,2,4,1,3,3,4,2,3,4,4), 
levels = c(1,2,3,4), labels = c("Sus","Apr","Not","Exc"))
facOrd

## Listas

x = c(1,-2,3,4,-5,6,7,-8,-9,0)
miLista = list(nombre = "X", vector = x, media = mean(x), sumas = cumsum(x))
miLista

str(miLista)
names(miLista)

miLista$nombre
miLista$vector
miLista$media

rm(v)
rm(vec)

## Matrices

M = matrix(1:12, nrow = 4)
M
N = matrix(1:12, nrow = 5) ## R lanza un warning porque las filas no son un multiplo de 12, pero de todos modos autocompleta con los primeros digitos
N

matrix(0, nrow = 3, ncol = 5)
matrix(V, ncol = 5)


