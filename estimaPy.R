INTENTOS = 1000

x = runif(INTENTOS, min=-1, max=1)
y = runif(INTENTOS, min=-1, max=1)
z = sqrt(x^2+y^2)

aciertos = length(which(z<=1))
pi = 4 * aciertos/INTENTOS


plot(x[which(z<=1)],y[which(z<=1)], pch=16, col='red',  xlab="", ylab="", axes=FALSE)
points(x[which(z>1)],y[which(z>1)], pch=16, col='blue')
title(
  main = "Estimación de pi"
)

axis(1, seq(-1,1,0.5))
axis(2, seq(-1,1,0.5), las=2)

circulo_x = c(seq(-1, 1, 0.01), seq(1, -1, -0.01))
circulo_y = sqrt(1-circulo_x^2)
points(circulo_x,circulo_y,type="l")
points(circulo_x,-circulo_y,type="l")
