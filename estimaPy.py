# Estimación de pi mediante el método de Montecarlo

from random import randint, uniform,random
aciertos = 0
INTENTOS = 1000000

for i in range(1, INTENTOS):
    x = uniform (-1,1)
    y = uniform(-1,1)
    if x**2 + y**2 <= 1:
        aciertos += 1
        
pi = (aciertos / INTENTOS) * 4

print(pi)