## Ejemplo (método de Scott)
crabs = read.table("data/datacrab.txt", header = TRUE)
str(crabs)
cw = crabs$width
k1 = nclass.scott(cw) # 10 intervalos
a1 = diff(range(cw))/10 # Amplitud ajustada 1.3
A1 = 1.3
L1 = min(cw)-1/2*0.1 # valor inicio del 1er intervalo
L = L1 + A1*(0:10) # Extremos de los intervalos
X1 = (L[1]+L[2])/2 # valor de la 1ra marca
X = X1 + A1*(0:9) # valor de las marcas

## Pregunta 2 (Método de la raiz)
n = length(cw) # longitud de la muestra
k2 = ceiling(sqrt(n)) # 14 intervalos
a2 = diff(range(cw))/14 # Amplitud ajustada 0.9
A2 = 0.9
M1 = min(cw)-1/2*0.1
M = M1 + A2*(0:14) # Extremos de los intervalos
Y1 = (M[1]+M[2])/2 # valor de la 1ra marca
Y = Y1 + A2*(0:13) #valor de las marcas

## Pregunta 3 (Método de Sturges)
k3 = nclass.Sturges(cw) # 9 intervalos
a3 = diff(range(cw))/9 # Amplitud ajustada 1.4
A3 = 1.4
N1 = min(cw)-1/2*0.1
N = N1 + A3*(0:9) # Vector intervalor
Z1 = (N[1]+N[2])/2
Z = Z1 + A3*(0:8) # Vector marcas

## Pregunta 4 (Método FD)
k4 = nclass.FD(cw) # 13 intervalos
a4 = diff(range(cw))/13 # Amplitud ajustada a 1
A4 = 1
P1 = min(cw)-1/2*0.1
P = P1 + A4*(0:13) # Vector intervalos
W1 = (P[1]+P[2])/2
W = W1 + A4*(0:12) #vector marcas

