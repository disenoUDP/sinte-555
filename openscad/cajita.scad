


// resolucion = 5.0;
resolucion = 100.0;

// bordes de la caja
bordeX = 5.0;
bordeY = 5.0;
bordeZ = 1.0;

// lados exteriores
extLadoX = 53.0;
extLadoY = 82.0;
extLadoZ = 50.0;

radioPerilla = 5.0;
radioParlante = 10;

radioEsferaFilete = 0;

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

    color([1.0,0.0,1.0])
    rotate([0, 0, 180])
    translate([-25, 35, 25])
    linear_extrude(2)
    text("sinte555", size= 3, halign="left",valign = "baseline");
    
    color([1.0,0.0,1.0])
    rotate([0, 0, 180])
    translate([-25, 30, 25])
    linear_extrude(2)
    text("disenoUDP", size= 3, halign="left",valign = "baseline");

    color([1.0,0.0,1.0])
    rotate([0, 0, 180])
    translate([-25, 25, 25])
    linear_extrude(2)
    text("v0.0.1", size= 3, halign="left",valign = "baseline");

};



cajita(
    extLadoX,
    extLadoY,
    extLadoZ,
    bordeX,
    bordeY,
    bordeZ);


