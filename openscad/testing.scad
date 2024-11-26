
// linear_extrude(4)
// text("disenoUDP");

extLadoX = 60.0;
extLadoY = 200.0;
extLadoZ = 50.0;

intLadoX = 80.0;
intLadoY = 190.0;
intLadoZ = 40.0;

radioPerilla = 20.0;

module cajita(
    extLadoX,
    extLadoY,
    extLadoZ,
    intLadoX,
    intLadoY,
    intLadoZ,
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
    intLadoX,
    intLadoY,
    intLadoZ
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
    intLadoX,
    intLadoY,
    intLadoZ);


