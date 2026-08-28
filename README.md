# sinte-555

proyecto inspirado en el chip 555 y el proyecto Atari Punk Console, en su iteración de Oskitone.

## acerca de

proyecto de investigación empezado en 2024, con el objetivo de crear un sintetizador de audio en diseño UDP.

## estructura del repositorio

* [openscad/](./openscad/): archivos de diseño de superficie en openscad
* [kicad/](./kicad/): archivos de diseño de circuito en KiCad

## código

### scripts de automatización

un aspecto muy bello de generar estructuras con STLs a partir de líneas de código, es que el diseño se puede parametrizar y automatizar.

## referencias

* Oskitone <https://oskitone.com>
* How to Create a Shell Script in linux <https://www.geeksforgeeks.org/how-to-create-a-shell-script-in-linux/>
* 555 timer circuits <https://www.555-timer-circuits.com/>

en este taller de 2 horas vamos a aprender a armar un sintetizador conocido como Atari Punk Console (APC).

## lista de materiales (bom)

| Nombre             | Cantidad   | Precio    | Enlace                                                |
| :----------------- | :--------- | :-------- | :---------------------------------------------------- |
| Protoboard         | 1          | 1.500 CLP | <https://afel.cl/products/mini-protoboard-400-puntos> |
| Chip 555           | 2          |           |        |
| Potenciómetro 470k | 2          |           |        |
| Parlante           | 1          |           |        |
| Resistor 10k       | 2          |           |        |
| Capacitor 100n     | 3          |           |        |
| Capacitor 10n      | 1          |           |        |

<https://www.mechatronicstore.cl/>
<https://www.victronics.cl/>
<https://www.cabezacuadrada.cl/>

## paso 01: ubicar los chips en la protoboard

tomar la protoboard y conectar los dos chips LM555 en ella.

orientar los chips de manera que el pin 1 quede en la esquina inferior izquierda.

## paso 02: conectar la alimentación de los chips

conectar los pines de alimentación de los chips a los rieles de alimentación de la protoboard.

usar cables rojos para conectar al voltaje positivo.

usar cables negros o café para conectar al voltaje negativo (tierra).

## paso 03: armar el circuito del LM555 de la izquierda

## paso 04: armar el circuito del LM555 de la derecha
