## Gráficos en R

alumnos = c(1:10)
notas = c(2,5,7,9,8,3,5,6,10,7)
plot(alumnos,notas)

exponencial = 2^(1:6)
plot(exponencial)

f <- function(x){ sqrt(x) }
plot(f)

## Gráfico de la sucesión de Fibonacci

n = 1:20
fib = (1/sqrt(5))*((1+sqrt(5))/2)^n - (1/sqrt(5))*((1-sqrt(5))/2)^n
fib
plot(fib, xlab = "n", ylab = expression(F[n]), main = "Sucesión de Fibonacci",
     pch = 19, col="powderblue")
