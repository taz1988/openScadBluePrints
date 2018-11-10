cube([1, 1, 8]);
translate([-3.5, 0, 9]) rotate([0, 90, 0]) {
    cube([1, 1, 8]);
}


translate([9, 0, 0]) {
    cube([8, 1, 1]);
    translate([0, 0, 8]) {
        cube([8, 1, 1]);
    }
    rotate ([0, -45, 0]) {
        cube([11.5, 1, 1]);
    }
}