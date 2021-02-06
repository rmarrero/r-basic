## Cargar dataframe
T12 = read.table("data/grades.txt", head = TRUE)

## ver estructura del dataframe
str(T12)

## Pregunta 1
round(summary(T12[,2]),2) # media, mediana forma conjunta
as.numeric(names(which(table(T12$nota) == max(table(T12$nota))))) # moda de forma global
by(T12$nota, T12$estudio, FUN = summary) # agrupados por carrera universitaria

## Pregunta 2
aggregate(nota~estudio, data = T12, FUN = sd) # desviación standard
aggregate(nota~estudio, data = T12, FUN = IQR) # Rango intercuartilico

## Pregunta 4
boxplot(nota~estudio, data = T12, main = "Gráfico de notas por estudios", col =c("aquamarine","cadetblue1", "azure2", "cyan"),
        notch = TRUE)
media = aggregate(nota~estudio, data = T12, FUN = mean)
points(media, col = "red", pch = 20)

## Pregunta 5
str(boxplot(nota~estudio, data = T12, main = "Gráfico de notas por estudios", col =c("aquamarine","cadetblue1", "azure2", "cyan"),
           notch = TRUE))


