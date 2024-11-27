include <constantes.scad>;
include <creditos.scad>;


// resolucion = 5.0;
resolucion = 100.0;

module cajita(
    extLadoX,
    extLadoY,
    extLadoZ,
    bordeX,
    bordeY,
    bordeZ
    )
    
    {
    
    difference() {
    
    cube(
    [
    extLadoX,
    extLadoY,
    extLadoZ
    ],
    center = true);
    
    cube(
    [
    extLadoX - bordeX,
    extLadoY + bordeY,
    extLadoZ - bordeZ
    ],
    center = true);
    
    translate([15, -15, 20])
    cylinder (h = 20, r=radioPerilla, center = true, $fn = resolucion);
    
    translate([-15, -15, 20])
    cylinder (h = 20, r=radioPerilla, center = true, $fn = resolucion);
    
    translate([0, 20, 20])
    cylinder (h = 20, r=radioParlante, center = true, $fn = resolucion);
    
    color([1.0,0.0,1.0])
    translate([-extLadoX/2, -extLadoY/2, -extLadoZ/2])
    sphere(r=radioEsferaFilete);
    
    color([1.0,0.0,1.0])
    translate([-extLadoX/2, +extLadoY/2, -extLadoZ/2])
    sphere(r=radioEsferaFilete);
    
    color([1.0,0.0,1.0])
    translate([+extLadoX/2, -extLadoY/2, -extLadoZ/2])
    sphere(r=radioEsferaFilete);
    
    color([1.0,0.0,1.0])
    translate([+extLadoX/2, +extLadoY/2, -extLadoZ/2])
    sphere(r=radioEsferaFilete);
    
    color([1.0,0.0,1.0])
    translate([-extLadoX/2, -extLadoY/2, +extLadoZ/2])
    sphere(r=radioEsferaFilete);
    
    color([1.0,0.0,1.0])
    translate([-extLadoX/2, +extLadoY/2, +extLadoZ/2])
    sphere(r=radioEsferaFilete);
    
    color([1.0,0.0,1.0])
    translate([+extLadoX/2, -extLadoY/2, +extLadoZ/2])
    sphere(r=radioEsferaFilete);
    
    color([1.0,0.0,1.0])
    translate([+extLadoX/2, +extLadoY/2, +extLadoZ/2])
    sphere(r=radioEsferaFilete);

    }

    creditos();

};



cajita(
    extLadoX,
    extLadoY,
    extLadoZ,
    bordeX,
    bordeY,
    bordeZ
    );


