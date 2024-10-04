
r = 180/2;
$fn=128;
difference() {
	translate([0,0,4]) difference() {
		cylinder(r=r, h=152);
		translate([0,0,-0.5]) cylinder(r=(r) - 20, h=152+1);
	}

	for (z = [1 : 9])
	{
		off = z % 2 ? 0 : 30;
		translate([0,0,16*z])
		for (i = [1 : 30])
			rotate([0,90,(360/30)*i + off]) cylinder(r1=0, r2=11, h=r+10, $fn=6);
	}
}

