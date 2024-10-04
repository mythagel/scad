translate([0,10.1, 0]) color("black") cube([630, 21.8, 376.13]);

union() {
	dist_x = (630-3) / 10;
	echo(dist_x);
	for (x = [0 : (630/dist_x)])
		translate([x*dist_x, 0, 0]) cube([3, 10, 376.13]);

	dist_z = (376.13-3) / 6;
	echo(dist_z);
	for (z = [0 : (376.13/dist_z)])
		translate([0, 0, z*dist_z]) cube([630, 10, 3]);
}

cost_per_meter = 9/3;
totalLength = (376.13* 16) + (630 * 10);
cost = (totalLength/1000) * cost_per_meter;
echo (cost);