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


# Pregunta 2

