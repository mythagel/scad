
linear_extrude(height=1)
projection(cut = true) rotate([0,90,0])
{
translate([0,20,0]) rotate([90,0,0]) cylinder(r=2, h=40, $fn=6);

translate([0,-10,0]) cylinder(r1=2,r2=0.5, h=9);
translate([0,10,0]) cylinder(r1=2,r2=0.5, h=9);
}