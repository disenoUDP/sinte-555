
// linear_extrude(4)
// text("disenoUDP");

bordeX = 5.0;
bordeY = 5.0;
bordeZ = 5.0;

extLadoX = 60.0;
extLadoY = 200.0;
extLadoZ = 50.0;

radioPerilla = 20.0;

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
    extLadoY - bordeY,
    extLadoZ - bordeZ
    ],
    center = true);
    
    
    translate([15, -30, 20])
    cylinder (h = 20, r=10, center = true, $fn=100);
    
    translate([-15, -30, 20])
    cylinder (h = 20, r=10, center = true, $fn=100);
    
    translate([0, 50, 20])
    cylinder (h = 20, r=25, center = true, $fn=100);
    
    
    }

};


cajita(
    extLadoX,
    extLadoY,
    extLadoZ,
    bordeX,
    bordeY,
    bordeZ);


