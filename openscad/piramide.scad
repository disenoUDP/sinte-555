// carcasa piramidal
// para sinte555
// por montoyamoraga
// para diseno UDP
// diciembre 2024

// hecha con openscad
// version 2024.11.25 (git b550957dd)

include <constantes.scad>;
include <creditos.scad>;

use <scad-utils/transformations.scad>
use <scad-utils/lists.scad>
use <scad-utils/shapes.scad>

resolucion = 5.0;
//resolucion = 100.0;

// en mm
baseX = protoBoardChicoX;
baseY = protoBoardChicoY;
baseZ = 2;

piramideX = protoBoardChicoX;
piramideY = protoBoardChicoY;
piramideZ = 200;

angulo = 60;
anguloCorte = 75;

// base
cube(
    [baseX,
    baseY,
    baseZ],
    center = true);

    // cuerpo
difference() {
// piramide de afuera
  hull() {
    for (iterador=[0:piramideZ]) {
    translate([0, 0, iterador])
    cube(
    [piramideX - iterador,
    piramideY - iterador,
    1], center = true);
    }
  }
  // piramide de adentro sustraida
  hull() {
    for (iterador=[0:piramideZ]) {
    translate([0, 0, iterador])
    cube(
    [piramideX - 2 - iterador,
    piramideY - 2 - iterador,
    1.1], center = true);
    }
  }
  
   // perilla uno
  rotate([-angulo, 0, 0])
  translate([-15.0, -20.0, 25.0])
  cylinder(h = 30, r = 8.0, center = true);

  // perilla dos
  rotate([-angulo, 0, 0])
  translate([15.0, -5.0, 25.0])
  cylinder(h = 30, r = 8.0, center = true);

  // parlante
  rotate([-angulo, 0, 0])
  translate([8.0, -30.0, 25.0])
  cylinder(h = 15, r = 12.0, center = true);
  
  // corte para protoboard
translate([0, -30.0, 10])
rotate([anguloCorte, anguloCorte, 0])
cube([120, 120, 40], center = true);

}








