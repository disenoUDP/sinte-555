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

| Nombre             | Cantidad   | $ unidad  | Enlace                                                                       |
| :----------------- | :--------- | :-------- | :--------------------------------------------------------------------------- |
| Protoboard         | 1          | 1.500 CLP | <https://afel.cl/products/mini-protoboard-400-puntos>                        |
| Chip 555           | 2          |   400 CLP | <https://www.mechatronicstore.cl/n555-timers/>                               |
| Potenciómetro 470k | 2          |   490 CLP | <https://www.mechatronicstore.cl/potenciometro-rotacional-10k/>              |
| Resistor 10k       | 2          |   100 CLP | <https://www.mechatronicstore.cl/resistencia/>                               |
| Capacitor 100n     | 3          |   100 CLP | <https://www.mechatronicstore.cl/condensadores-ceramicos-distintos-valores/> |
| Capacitor 10n      | 1          |   100 CLP | <https://www.mechatronicstore.cl/condensadores-ceramicos-distintos-valores/> |
| Parlante           | 1          | 3.000 CLP | <https://afel.cl/products/mini-parlante-altavoz-de-3w>                       |

Algunas tiendas consultadas:

<https://www.mechatronicstore.cl/>
<https://www.victronics.cl/>
<https://www.cabezacuadrada.cl/>

## paso 01: ubicar los chips en la protoboard

tomar la protoboard y conectar los dos chips 555 en ella.

orientar los chips de manera que el pin 1 quede en la esquina inferior izquierda.

el izquierdo recibe el nombre 555-1, el derecho 555-2.

lo mismo con los potenciómetros: a la izquierda pote-1 y a la derecha  pote-2.

## paso 02: conectar la alimentación de los chips

conectar los pines de alimentación de los chips a los rieles de alimentación de la protoboard.

usar cables rojos para conectar al voltaje positivo.

usar cables negros o café para conectar al voltaje negativo (tierra).

## paso 03: armar el circuito de chip 555 de la izquierda, modo astable

patitas:

* 1: a GND
* 2: a GND por C de 10n, a patita 3 de pote-1
* 3: a patita 2 de chip 555-2
* 4: a VCC
* 5: a GND por C de 100n
* 6: a patita 2
* 7: a VCC por R 10k, a patita 2 de pote-1
* 8: a VCC

## paso 04: armar el circuito de 555 de la derecha, modo monostable

patitas:

* 1: a GND
* 2: a patita 3 del chip 555-1
* 3: a patita 1 de parlante
* 4: a VCC
* 5: a GND por C de 100n
* 6: a VCC por R de 10k, a GND por C polarizado de 100n
* 7: a patita 6
* 8: a VCC
