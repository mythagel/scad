$fn=64;

intersection() {
    union() {
        difference() {
            cylinder(r=58/2, h=15);
            translate([0,0,-0.5]) cylinder(r=58/2 - 1, h=15+1);
        }
        translate([0,0,1]) rotate_extrude(convexity = 10) translate([58/2, 0, 0]) circle(r = 1);
    }
    for (i = [0 : 5])
        rotate([0,0,360/5 * i]) translate([30,0,15/2]) cube([60, 10, 15], center=true);
}


translate([0,0,15]) //intersection() {
    cylinder(r=60/2, h=2);
    //translate([0,0,-120 + 5]) sphere(r=120, $fn=128);
//}

