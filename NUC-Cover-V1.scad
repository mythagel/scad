
$fn=128;
module blah() {
    include </home/nicholas/Downloads/customizable_fan_cover_V2_8_9.scad>
}

if (false) {

difference() {
translate([0,0,29.70000077]) rotate([-90,0,0]) import("/home/nicholas/Downloads/NUC-Cover.stl");

// Center hole
translate([0,0,-1]) cylinder(r=90/2, h=5);
// Screw holes
translate([82.5/2, 82.5/2, -1]) cylinder(r=5/2, h=10);
translate([-82.5/2, 82.5/2, -1]) cylinder(r=5/2, h=10);
translate([82.5/2, -82.5/2, -1]) cylinder(r=5/2, h=10);
translate([-82.5/2, -82.5/2, -1]) cylinder(r=5/2, h=10);

}


//cube([114.9, 110, 1], center=true);
}

module rounded_cube(x, y, z, r) {
        dx = x - (r*2);
        dy = y - (r*2);
        hull() {
                translate([-dx/2,-dy/2]) cylinder(r=r, h=z);
                translate([-dx/2,dy/2]) cylinder(r=r, h=z);
                translate([dx/2,-dy/2]) cylinder(r=r, h=z);
                translate([dx/2,dy/2]) cylinder(r=r, h=z);
        }
}


difference() {
union() {
    difference() {
        hull() {
            intersection() {
                translate([0,0,-29.70000077]) rotate([90,0,0]) import("/home/nicholas/Downloads/NUC-Cover.stl");
                translate([0,0,-1]) cube([120, 120, 2], center=true);
            }

            translate([0,0,(-29.70000077) + 30]) rotate([90,0,0]) import("/home/nicholas/Downloads/NUC-Cover.stl");
        }

        translate([0,0,-29.70000077]) rotate([90,0,0]) import("/home/nicholas/Downloads/NUC-Cover.stl");
    }

    translate([0,0,-29.70000077]) rotate([90,0,0]) import("/home/nicholas/Downloads/NUC-Cover.stl");
}

translate([0,0,-10]) cylinder(r=90/2, h=50);


//translate([0,0,-50/2 + 28]) cube([98, 98, 50], center=true);
translate([0,0,-21.65]) rounded_cube(115 - 12, 110 - 12, 50, 5);
}

translate([0,0,30-0.001]) rotate([0,180,0]) blah();


translate([82.5/2, 82.5/2, 0]) cylinder(r=4.3/2, h=30);
translate([-82.5/2, 82.5/2, 0]) cylinder(r=4.3/2, h=30);
translate([82.5/2, -82.5/2, 0]) cylinder(r=4.3/2, h=30);
translate([-82.5/2, -82.5/2, 0]) cylinder(r=4.3/2, h=30);

// FAN
translate([0,0,16]) %cube([92, 92, 25], center=true);