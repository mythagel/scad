$fn=128;

//cylinder(r=25/2, h=30);

difference() {

	union() {
		difference() {
			minkowski() {
				hull() {
					translate([0,4,0]) cylinder(r=30/2, h=30);
					translate([-30/2,25/2,0]) cube([30,3,30]);
				}
				sphere(r=0.5);
			}
			translate([0,0,-0.5]) cylinder(r=25/2, h=31);
		}
		translate([0,0,30/2]) difference() {
			cylinder(r=25.1/2, h=1);
			translate([0,0,-0.5])cylinder(r=24/2, h=2);
		}
	}

translate([-31/2,28/2 + 1.5,-0.5]) cube([31,5,31]);	
	translate([0,30-14,30/2]) rotate([90,0,0]) cylinder(r2=25/2, r1=28/2, h=12+3);
	
	translate([0,15.5-7.5,0]) rotate([0,0,90]) {
	translate([0,24/2,30/2 - 24/2]) rotate([0,90,0]) cylinder(r=2.8/2, h=10);
	translate([0,-24/2,30/2 - 24/2]) rotate([0,90,0]) cylinder(r=2.8/2, h=10);
	translate([0,24/2,30/2 + 24/2]) rotate([0,90,0]) cylinder(r=2.8/2, h=10);
	translate([0,-24/2,30/2 + 24/2]) rotate([0,90,0]) cylinder(r=2.8/2, h=10);
}

translate([-31/2,-16,-0.5]) cube([31,10,31]);	
}

