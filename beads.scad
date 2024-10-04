$fn = 32;

difference() {
	linear_extrude(height = 20, convexity = 10, twist = 90)
	circle(r = 10, $fn=6);
	
	translate([0,0,-0.5]) cylinder(r=3/2, h=20+1);
}


translate([40,0,0]) difference() {
	resize([0,0,30]) sphere(r=15/2);
	cylinder(r=3/2, h=20+1, center=true);
	translate([0,0,25]) cylinder(r=20, h=30, center=true);
	translate([0,0,-25]) cylinder(r=20, h=30, center=true);
}

translate([80,0,0]) difference() {

	linear_extrude(height = 20, convexity = 10, twist = 60, slices=20)
	union() {
		circle(r=10);
		for (i = [1 : 360/30])
			rotate([0,0,30*i]) translate([9.5,0]) square([4,2]);
		//rotate([0,0,30]) translate([10,0]) square([1,1]);
	}
	
	translate([0,0,-0.5]) cylinder(r=3/2, h=20+1);
}	