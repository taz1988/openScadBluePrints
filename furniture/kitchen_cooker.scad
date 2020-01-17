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
    }
}

module furniture()
{
    
}

walls();
pipes();