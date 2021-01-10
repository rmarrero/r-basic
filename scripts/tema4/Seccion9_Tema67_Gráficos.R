## Gráficos en R

alumnos = c(1:10)
notas = c(2,5,7,9,8,3,5,6,10,7)
plot(alumnos,notas)
plot(alumnos,notas, main = "Grafico con texto")
text(alumnos,notas, labels = c("S","A","N","E","N","S","A","A","E","N"), 
     pos = c(rep(3,times = 8),1,3))

exponencial = 2^(1:6)
plot(exponencial)

f <- function(x){ sqrt(x) }
plot(f)

## Gráfico de la sucesión de Fibonacci

n = 1:20
fib = (1/sqrt(5))*((1+sqrt(5))/2)^n - (1/sqrt(5))*((1-sqrt(5))/2)^n
fib
plot(fib, xlab = "n", ylab = expression(F[n]), main = "Sucesión de Fibonacci",
     pch = 19, col="mediumorchid4")
legend("top",
       col = "blue",
       legend = "Serie de Fibonacci",
       )

## Tipo de gráfico

par(mfrow = c(3,2))
x = c(50:59)
y = c(2,9,25,3,100,77,62,54,19,40)
plot(x,y, pch = 23, cex = 2, col = "blue", type = "p")
plot(x,y, pch = 23, cex = 2, col = "blueviolet", type = "l")
plot(x,y, pch = 23, cex = 2, col = "gold", type = "b")
plot(x,y, pch = 23, cex = 2, col = "deeppink", type = "o")
plot(x,y, pch = 23, cex = 2, col = "springgreen", type = "h")
plot(x,y, pch = 23, cex = 2, col = "firebrick1", type = "s")
par(mfrow = c(1,1))

## Añadiendo parámetros

x = (2*(1:20))
y = (-1)^(1:20)*5*(1:20)
plot(x,y, main = "Ejemplo de grafico", pch = 8, cex = 1, type = "b", lty = 4, lwd = 4, 
     xaxp = c(0,40,20), yaxp = c(-100,100,8))

## elementos extras en un gráfico points (añade puntos) y abline (añade rectas)

x = (2*(1:20))
y = (-1)^(1:20)*5*(1:20)
plot(x,y, main = "Poniendo un punto y una recta", pch = 8, cex = 1, type = "b", lty = 4, 
     lwd = 4, xaxp = c(0,40,2), yaxp = c(-100,100,8))
points(20,0, col = "red", cex = 4, pch = 16)
abline (h = 0, lty = 2, col = "dodgerblue")

f <- function(x){
  x^2 -2*x + sqrt(abs(x))
}
plot(f, xlim = c(-3,3))
points(0,0, pch = 19)
points(-3:3, (-3:3)^2, col = "blue")
abline(2,3, lty = "dashed", col = "red")
abline(v = 2, lty = "dotted", col = "black")
abline(h = 5, lty = "dotdash", col = "gray")

f <- function(x){x^2}
plot(f, xlim = c(-3,3), col = "red", lwd = 2, ylab = expression(y^2), xlab = "x")
abline(h=0:9, v = -3:3, lty="dotted", col = "grey")

## Gráfico añadiendo elementos sobre el mismo plot

x = c(5*(1:10))
plot(x,c(exp(-x)+(-1)^x*x/2*sin(x)^2), xlab = "", ylab = "", 
     main = "Grafico con varios elementos")
segments(10,0,40,0, col = "red", lwd = 4)
arrows(10,0,40,-10, col = " blue", length = 0.5, angle = 5, code = 3)
symbols(40,0,stars = cbind(1,.5,1,.5,1,.5,1,.5,1,.5), add = TRUE, lwd = 3, inches = 0.5)
symbols(40,0,stars = cbind(1,.5,1,.5,1,.5,1,.5,1,.5), add = TRUE, lwd = 3)
polygon(c(20,30,40),c(10,-10,10), col = "gold", density = 3, angle = 90, lty = 4, 
        lwd = 5)

require(stats); require(grDevices)
x <- 1:10
y <- sort(10*runif(10))
z <- runif(10)
z3 <- cbind(z, 2*runif(10), runif(10))
symbols(x, y, thermometers = cbind(.5, 1, z), inches = .5, fg = 1:10)
symbols(x, y, thermometers = z3, inches = FALSE)
text(x, y, apply(format(round(z3, digits = 2)), 1, paste, collapse = ","),
     adj = c(-.2,0), cex = .75, col = "purple", xpd = NA)

# Añadir leyendas

x = seq(0,2*pi,0.1)
plot(x,sin(x),type="l",col="blue",lwd=3, xlab="", ylab="")
lines(x,cos(x),col="green",lwd=3)
lines(x, tan(x), col="purple",lwd=3)
legend("bottomleft",
       col=c("blue","green","purple"), 
       legend=c("Seno","Coseno", "Tangente"), 
       lwd=3, 
       bty="l"
       )

## Añadiendo lineas y curvas

x = c(5*(1:20))
plot(x,c(exp(-x)+(-1)^x*x/2*sin(x)^2))
lines(c(20,10,40,80,60,60,20),c(20,0,-20,-20,40,0,20), lwd = 2, col = "darkslategray1")
curve(20*sin(x), add = TRUE, col = "green")

## Tarea 6 - Ejercicio1

curve(x^2-3*x+30,xlim = c(-15,15), main = "Una parábola", xlab = expression(x), ylab = expression(y=x^2-3*x+30))

## Tarea 6 - Ejercicio2

f <- function(x){x^2-3*x+30}
plot(f,xlim = c(-15,15), main = "Una parábola", xlab = expression(x), ylab = expression(y=x^2-3*x+30))

## Tarea 6 - Ejercicio3


curve (5*2^x, xlim = c(-10,25), ylab = expression(5*2^x), xlab ="", log = "y")

## Tarea 6 - Ejercicio4

f2 <- function(x){3*x}
f3 <- function(m){2*m+7}
plot(f2, xlim = c(-10,20), xlab = "", ylab = "", col="blue", main = "2 rectas",sub = "Dos rectas con pendiente opuesto")
curve(-3*x, col="green", add = TRUE)
abline(h = 0, col="red",lwd = 5 )
lines(-10:20,f3(-10:20),col = "blue", lwd = 2)
legend("topleft",
       legend = c(expression(3*x), expression(-3*x)),
       lwd = 2,
       col = c("blue","green")
       )
