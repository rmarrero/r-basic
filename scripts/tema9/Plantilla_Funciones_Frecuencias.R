# Funcion Tabla de Frecuencias (clases con la misma amplitud)
TablaFrecs = function(x,k,A,p){ 
  L = min(x)-p/2+A*(0:k)
  x_cut = cut(x, breaks = L, right=FALSE)
  intervals = levels(x_cut)
  mc = (L[1]+L[2])/2+A*(0:(k-1))
  Fr.abs = as.vector(table(x_cut)) 
  Fr.rel = round(Fr.abs/length(x),4) 
  Fr.cum.abs = cumsum(Fr.abs) 
  Fr.cum.rel = cumsum(Fr.rel)
  tabla = data.frame(intervals, mc, Fr.abs, Fr.cum.abs, Fr.rel, Fr.cum.rel)
  tabla
}

#Funcion Tablas de Frecuencias (clases indicando vector de extremos)
TablaFrecs.L = function(x,L,V){
  x_cut = cut(x, breaks=L, right=FALSE, include.lowest=V)
  intervals = levels(x_cut)
  mc = (L[1:(length(L)-1)]+L[2:length(L)])/2
  Fr.abs = as.vector(table(x_cut)) 
  Fr.rel = round(Fr.abs/length(x),4)
  Fr.cum.abs = cumsum(Fr.abs)
  Fr.cum.rel = cumsum(Fr.rel)
  tabla = data.frame(intervals, mc, Fr.abs, Fr.cum.abs, Fr.rel, Fr.cum.rel)
  tabla
}

# Histograma Frecuencia Absoluta
histAbs = function(x,L) {
  h = hist(x, breaks = L, right = FALSE, freq = FALSE,
           xaxt = "n", yaxt = "n", col = "lightgray", 
           main = "Histograma de frecuencias absolutas", 
           xlab = "Intervalos y marcas de clase",ylab = "Frecuencias absolutas")
  axis(1, at=L)
  text(h$mids, h$density/2, labels=h$counts, col="purple") 
}

# Histograma de Frecuencia Absoluta Acumulada
histAbsCum = function(x,L) {
  h = hist(x, breaks = L, right = FALSE , plot = FALSE) 
  h$density = cumsum(h$density)
  plot(h, freq = FALSE, xaxt = "n", yaxt = "n", col = "lightgray", 
       main = "Histograma de frecuencias\nabsolutas acumuladas", xlab = "Intervalos", 
       ylab = "Frec. absolutas acumuladas")
  axis(1, at=L)
  text(h$mids, h$density/2, labels = cumsum(h$counts), col = "purple") 
}

# Histograma de Frecuencias Relativas
histRel = function(x,L) {
  h = hist(x, breaks=L, right=FALSE , plot=FALSE)
  t = round(1.1*max(max(density(x)[[2]]),h$density),2) 
  plot(h, freq = FALSE, col = "lightgray", 
       main = "Histograma de frec. relativas\ny curva de densidad estimada", 
       xaxt="n", ylim=c(0,t), xlab="Intervalos", ylab="Densidades")
  axis(1, at = L) 
  text(h$mids, h$density/2, labels = round(h$counts/length(x),2), col = "blue")
  lines(density(x), col = "purple", lwd = 2) 
}

# Histograma de Frecuencias Relativas Acumuladas
histRelCum = function(x,L){
  h = hist(x, breaks = L, right = FALSE , plot = FALSE)
  h$density = cumsum(h$counts)/length(x)
  plot(h, freq = FALSE, 
       main = "Histograma de frec. rel. acumuladas\n y curva de distribución estimada", 
       xaxt = "n", col = "lightgray", xlab = "Intervalos", 
       ylab = "Frec. relativas acumuladas") 
  axis(1, at = L)
  text(h$mids, h$density/2, labels = round(h$density ,2), col = "blue")
  dens.x = density(x)
  dens.x$y = cumsum(dens.x$y)*(dens.x$x[2]-dens.x$x[1]) 
  lines(dens.x,col = "purple",lwd = 2)
}
  
# Histograma con Curva de DEnsidad estimada y Normal
histRel(cw,L)
curve(dnorm(x, mean(cw), sd(cw)), col="cyan4", lty=4, lwd=2,
      add=TRUE)
legend("topright", lwd=c(2,2), lty=c(1,4), col=c("purple","cyan4"), legend=c("densidad estimada","densidad normal"))

