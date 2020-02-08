module walls()
{
    size = 1000;
    color([0.5, 0.5, 0.5])
    {      
        translate([-2, -size, 0])
        {
            cube([2, size, size]);
        }
        cube([size, 2, size]);
        translate([0, -size, -2])
        {
            cube([size, size, 2]);
        }
    }
    color([0, 1, 0])
    {
        translate([0, -size, 0])
        {
            cube([18, size, 10]);
        }
    }
}

module pipes()
{
    color([1.0, 0, 0])
    {
        radius = 22;
        translate([(radius + 101), (-radius -73), 0])
        {
            cylinder(h = 1000, r = radius );
        }
        radius2 = 11;
        translate([(radius2 + 72), (-radius2 -143), 0])
        {
            cylinder(h = 1000, r = radius2 );
        }
        
        radius3 = 17.5;
        translate([(radius3 + 30), (-radius3 -800), 0])
        {
            cylinder(h = 1000, r = radius3 );
        }
    }
}

module furniture()
{
    //ezt meg le kell merni
    ySizeOfOven=530;
    zSizeOfOven=770;
    //ez is belerondit az eredeti elkepzelesbe
    yOffsetFromWall=150;
    //530 + 36 + 150 = 716
    offsetFromFloor=100;
    
    //suto meretei
    xSizeOfCooker=595;
    ySizeOfCooker=530;
    zSizeOfCooker=589;
    
    sizeOfDeadArea=95;
    //ebbol le fog jonni a 2 * 18
        sizeOfFrontPanel=711;
  
    translate([0.0, -(ySizeOfOven + yOffsetFromWall), 0.0])
    {
        
        
        //dead area, because of the pipes
        color("#db471a") cube([sizeOfDeadArea, 18, zSizeOfOven]);
        translate([sizeOfDeadArea, 0, 0]) 
        {
            difference() {
                color("#75443f") cube([sizeOfFrontPanel - sizeOfDeadArea, 18, 752]);
                translate([18, -2, offsetFromFloor]) color("#152fd4") cube([xSizeOfCooker, 30, zSizeOfCooker]);
            }  
            translate([18, 0, offsetFromFloor - 18]) color("#68db51") cube([xSizeOfCooker, ySizeOfCooker, 18]);
            translate([18, 0, offsetFromFloor + zSizeOfCooker]) color("#b054d1") cube([xSizeOfCooker, ySizeOfCooker, 18]);
            color("#51c9b7")  cube([18, ySizeOfOven, zSizeOfOven]);
            color("#9e2c56") translate([sizeOfFrontPanel - sizeOfDeadArea, 0, 0]) cube([18, ySizeOfOven, zSizeOfOven]);
            translate([0, ySizeOfOven, 0]) cube([100, 18 , zSizeOfOven]);
            translate([xSizeOfCooker - 65, ySizeOfOven, 0]) cube([100, 18 , zSizeOfOven]);
            
            translate([18, 18, zSizeOfOven]) cube([595, 510, 40]);
        }
            color("#29839e") translate([0,0 , zSizeOfOven]) cube([sizeOfFrontPanel + 18, ySizeOfOven + yOffsetFromWall, 30]);
            
    }
}

walls();
pipes();
furniture();