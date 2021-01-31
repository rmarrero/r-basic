library(MASS)
rawdata = birthwt

# Pregunta 1
View(rawdata)
head(rawdata)
help("birthwt")
colnames(rawdata) = list("PesoBajo", "EdadMadre", "PesoMadre", "RazaMadre", "Fumadora", "Prematuros", "Hipertension", "IrritUterina", "VisitasMedicoQ1", "PesoAlNacer")
rawdata$PesoBajo = as.factor(rawdata$PesoBajo)
rawdata$RazaMadre = as.factor(rawdata$RazaMadre)
rawdata$Fumadora = as.factor(rawdata$Fumadora)
rawdata$Prematuros = as.factor(rawdata$Prematuros)
rawdata$Hipertension = as.factor(rawdata$Hipertension)
rawdata$IrritUterina = as.factor(rawdata$IrritUterina)
rawdata$VisitasMedicoQ1 = as.factor(rawdata$VisitasMedicoQ1)
str(rawdata)
rawdata$PesoBajo = factor(rawdata$PesoBajo, labels = c("BuenPeso","PesoBajo"))
rawdata$RazaMadre = factor(rawdata$RazaMadre, labels = c("Blanca", "Negra", "Asiatica"))
rawdata$Fumadora = factor(rawdata$Fumadora, labels = c("NO FUMA", "SI FUMA"))
rawdata$Prematuros = factor(rawdata$Prematuros, labels = c("0h", "1h", "2h", "3h"))
rawdata$Hipertension = factor(rawdata$Hipertension, labels = c("NO", "SI"))
rawdata$IrritUterina = factor(rawdata$IrritUterina, labels = c("NO", "SI"))
rawdata$VisitasMedicoQ1 = factor(rawdata$VisitasMedicoQ1, labels = c("NO", "1v", "2v", "3v", "4v", "6v"))


# Pregunta 2
round(prop.table(ftable(rawdata[c(1,4)])),3)
round(prop.table(ftable(rawdata[c(1,4)]), margin = 1),3)

# Pregunta 3
plot(table(rawdata[c(1,4)]), main = "Relación RazaMadre vs PesoBajo", col = "Lightblue", xlab = "")


# Pregunta 4
barplot(t(table(rawdata[c(1,4)])), main = "Gráfico de Barras\n Relación RazaMadre vs PesoBajo",
        legend.text = TRUE, col = c("bisque", "azure4", "darkorange"),ylim = c(0,100), xlab = "", ylab = "# Observaciones",
        beside = TRUE)

# Pregunta 6
# Frecuencia relativa marginal Fumadora Vs Peso bajo
round(prop.table(ftable(rawdata[c(1,5)]), margin = 2),3)
# Gráfico de mosaico
plot(table(rawdata[c(1,5)]), main = "Relación Fumadora vs PesoBajo", col = "goldenrod", xlab = "", ylab = "")
#Gráfico de barras
barplot(t(table(rawdata[c(1,5)])), main = "Gráfico de Barras\n Relación Fumadora vs PesoBajo",
        legend.text = TRUE, col = c("forestgreen", "gray"),ylim = c(0,100), xlab = "", ylab = "# Observaciones",
        beside = TRUE)

# Pregunta 7
round(prop.table(ftable(rawdata[c(4,5,1)]), margin = 1),3)

#Pregunta 8
plot(table(rawdata[c(4,5,1)]), main= "Gráfico de Mosaico\n Influencia de la RazaMadre vs condición de Fumadora", col = c("orange", "green"), ylab = "", xlab = "")






