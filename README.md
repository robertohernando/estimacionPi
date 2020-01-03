# ~~Cálculo~~ Estimación de Pi por el método de Montecarlo

Intento de ~~calcular~~ estimar el valor de $\pi$ mediante el método de Montecarlo basándonos en un círculo y su cuadrado circunscrito asociado.

Se hacen distintos lanzamientos aleatorios obteniendo puntos del cuadrado y se ve si están dentro del círculo o no. Como el área del círculo es $\pi r^2$ y el del cuadrado circunscrito es $4 r^2$, tomando puntos aleatorios del cuadrado la probabilidad de caer en el círculo será de $\frac{\pi r^2}{4 r^2}= \frac{\pi}{4}$. Por tanto podemos aproximar Pi de la forma:

$$\pi = \frac{aciertos}{tiradas},$$

siendo acierto el caer dentro del círculo.

Para hacer el cálculo se usa un pequeño script en _python_ donde indicamos el número de tiradas a realizar y mediante el cálculo anterior estima $\pi$. 

