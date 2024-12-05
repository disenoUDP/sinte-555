// carcasa piramidal
// para sinte555
// por montoyamoraga
// para diseno UDP
// diciembre 2024

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

// base
cube(
    [baseX,
    baseY,
    baseZ], center = true);

    // cuerpo
difference() {
// piramide de afuera
  hull() {
    for (iterador=[0:200]) {
    translate([0, 0, iterador])
    cube(
    [piramideX - iterador,
    piramideY - iterador,
    1], center = true);
    }
  }
  // piramide de adentro sustraida
  hull() {
    for (iterador=[0:200]) {
    translate([0, 0, iterador])
    cube(
    [piramideX - 3 - iterador,
    piramideY - 3 - iterador,
    1.1], center = true);
    }
  }
  
   // perilla uno
  rotate([-65, 0, 0])
  translate([-30.0, -40.0, 55.0])
  cylinder(h = 30, r = 8.0, center = true);

  // perilla dos
  rotate([-65, 0, 0])
  translate([30.0, -10.0, 55.0])
  cylinder(h = 30, r = 8.0, center = true);

  // parlante
  rotate([-65, 0, 0])
  translate([15.0, -60.0, 55.0])
  cylinder(h = 30, r = 25.0, center = true);

  
  // corte para protoboard
  rotate([75, 75, 0])
  translate([0, 0, 75])
  cube([350, 350, 100], center = true);
  
}


