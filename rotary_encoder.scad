$fn=128;

//14.2748

/*difference() {
    cylinder(r=22, h=20);
    translate([0,0,-0.5]) cylinder(r=14/2, h=20+1);
}*/

/*

difference() {
    slot_w = 1.5;
    cylinder(r=20, h=4);
    th = 360/16;
    for (i = [0 : th : 360]) {
        rotate([0,0,i]) translate([20 - 5/2 - 1,0,4/2]) cube([5,slot_w,4+1], center=true);
    }
    
    translate([0,0,-0.5]) cylinder(r=14/2, h=20+1);
}

translate([0,0,10]) difference() {
    slot_w = 1.5;
    cylinder(r=20, h=4);
    rotate([0,0,0]) translate([20 - 5/2 - 1,0,4/2]) cube([5,slot_w,4+1], center=true);
    
    translate([0,0,-0.5]) cylinder(r=14/2, h=20+1);
}*/

/*difference() {
    union() {
        cylinder(r=20, h=4);


        rotate([0,0,0]) translate([14 - 2/2,0,4/2 + 4]) cube([2, 2,4], center=true);
    }

    translate([0,0,-0.5]) cylinder(r=14/2, h=20+1);
}*/

module ring(r, n) {
    difference() {
        difference() {
            cylinder(r=r, h=4);
            translate([0,0,-0.5]) cylinder(r=r-2, h=4+1);
        }
        th = 360/n;
        for (i = [0 : th : 360]) {
            rotate([0,0,i]) translate([r - 2/2,0,4/2]) cube([3, 2,4], center=true);
        }
    }
}

translate([0,0,4]) {
    ring(20, 32);
    ring(14, 1);
}

difference() {
    cylinder(r=20, h=4);
    translate([0,0,-0.5]) cylinder(r=14/2, h=4+1);
}