# Pregunta 1
alumnos = factor(sample(c("Ricardo", "Luis", "Alberto", "Jose", "Francisco", "Carlos", "Roberto", "María", "Luisa", "Cristina"), size = 100,
                        replace = TRUE))
table(alumnos)

# Pregunta 2
edades = sample(20:80, size = 100, replace = TRUE)
prop.table(table(edades))              

# Pregunta 3
altura = sample(100:110, size = 50, replace = TRUE)
peso = sample(50:70, size = 50, replace = TRUE)
table(altura,peso)

# Pregunta 4 
prop.table(table(altura,peso))
edades = sample(20:30, size = 50, replace = TRUE)
altura = sample(100:110, size = 50, replace = TRUE)
prop.table(table(altura,edades))

# Pregunta 5
edades = sample(20:25, size = 50, replace = TRUE)
edad = table(edades)
barplot(edad)

# Pregunta 6
alumnos = factor(sample(c("Ricardo", "Luis", "Alberto", "Jose", "Francisco", "Carlos", "Roberto", "María", "Luisa", "Cristina"), size = 100,
                        replace = TRUE))
pie(table(alumnos))

# Pregunta 7
P7 = DNase
barplot(apply(P7, MARGIN = 2, FUN = table)$density)



