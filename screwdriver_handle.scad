$fn=128;


difference() {
    union(){
        translate([0,0,64 - 4]) cylinder(r1=18/2, r2=16/2, h=4);
        translate([0,0,4]) cylinder(r=18/2, h=64-4*2);
        cylinder(r2=18/2, r1=16/2, h=4);
    }

    translate([0,0,-0.05]) intersection()
    {
        cylinder(r=10/2, h=64+0.1);
        union(){
            cylinder(r=17.3/2, h=49+0.1, $fn=3);
            translate([0,0,49]) cylinder(r=10/2, h=64+0.1);
        }
    }
    
    for (theta = [0: 360/12: 360])
        rotate([0, 0, theta]) translate([10,0,-0.5]) cylinder(r=2, h=65);
}
