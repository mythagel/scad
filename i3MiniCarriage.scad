if (false){
difference() {
	translate([-40/2,-40/2,0]) cube([40,40,60]);
	translate([0,1,-0.5]) cylinder(r=22/2, h=60+1);
	translate([-30/2,-30/2,-0.5]) cube([30,30,16]);
	
	translate([0,-15.1,0]) translate([-41/2, -10/2, 16]) cube([41, 10, 40]);
	translate([0,-6,16+(40/2)]) rotate([90,0,0]) cylinder(r2=36/2, r1=22/2, h=16, center=true);
}

translate([-23/2, -16/2]) cube([23, 16, 11.5]);
}



if (false)
translate([0,11.22 - 45/2,20]) rotate([-90,0,0]) import("/home/nicholas/Downloads/Wanhao_i3_mini_extruder_mount__e3d_v6_/files/backing.stl");

$fn=64;

w=35;
d=30;
difference() {
translate([0,0,-d/2]) difference() {

    translate([-w/2,-55/2,0]) cube([w,55,d]);
    translate([0,0,-0.5]) union() {
        translate([9,-45/2,0]) cylinder(r=4/2, h=d+1);
        translate([-9,-45/2,0]) cylinder(r=4/2, h=d+1);
        translate([9,45/2,0]) cylinder(r=4/2, h=d+1);
        translate([-9,45/2,0]) cylinder(r=4/2, h=d+1);
    }

}

translate([0,1.5,0]) rotate([90,0,0]) cylinder(r=23/2, h=29);

translate([-w/2,-12,0]) rotate([0,90,0]) cylinder(r2=28/2, r1=23/3, h=w);
translate([-w/2,-12,0]) rotate([0,90,0]) cylinder(r1=23/2, r2=23/3, h=w);


translate([15 - 2.5, -27.5,0]) translate([-10/2,0,-30/2]) rotate([90,0,90]) cube([30,30,10]);
}
