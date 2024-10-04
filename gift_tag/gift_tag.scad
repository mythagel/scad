$fn = 32;

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

name = "Annaliese";

difference() {
	rounded_cube(40*1.618, 40, 4, 4);
	translate([0,0,1.6]) linear_extrude(4) text(name, size=13, font="TeX Gyre Chorus", halign="center", valign="center");
}