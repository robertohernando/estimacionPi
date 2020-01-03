# Estimación de Pi por el método de Montecarlo

## Introducción

Intento de estimar el valor de $\pi$ mediante el método de Montecarlo basándonos en un círculo y su cuadrado circunscrito asociado.

Se hacen distintos lanzamientos aleatorios obteniendo puntos del cuadrado y se ve si están dentro del círculo o no. Como el área del círculo es $\pi r^2$ y el del cuadrado circunscrito es $4 r^2$, tomando puntos aleatorios del cuadrado la probabilidad de caer en el círculo será de $\frac{\pi r^2}{4 r^2}= \frac{\pi}{4}$. Por tanto podemos aproximar Pi de la forma:

$$\pi = 4 \frac{aciertos}{tiradas},$$

siendo acierto el caer dentro del círculo.

## Estimación

La estimación se hace gracias a un pequeño script en _python_ . 

Para hacer una tirada, se calcula aleatoriamente un punto dentro del cuadrado de lado 2 (consideramos $r=1$). Centrando el cuadrado en el $(0,0)$ sería obtener unos $x$  e $y$ aleatorios entre $-1$ y 1.

Tendremos éxito si $(x,y)$ están en el círculo, es decir, si $x^2 + y^2 <= 1$.

## Código

```python
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
```



## Resultado

Se han obtenido los siguientes valores

|   Tiradas | Estimación de $\pi$ |
| --------: | ------------------- |
|       100 | 3,04                |
|     1.000 | 3,172               |
|    10.000 | 3,1376              |
|   100.000 | 3,14204             |
| 1.000.000 | 3,1429              |

