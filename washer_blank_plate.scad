l = 235;
w = 55;
h = 1.3;

$fn=64;

module slot() {
    linear_extrude(h+1) minkowski() {
        circle(1.5);
        square([30,0.00001]);
    }
}

module clip() {
    clip_h = 3;
    clip_w = 5;
    clip_l = 11;
    difference() {
        cube([clip_l,clip_w,clip_h]);
        rotate([-3,0,0]) translate([-0.5,-2,-1]) cube([clip_l+1,clip_w,clip_h]);
    }
}

if(true) difference() {
    
    translate([2.5, 2.5]) linear_extrude(h) minkowski() {
        circle(2.5);
        square([l-5, w-5]);
    }
    
    slotx = l / 5;
    sloty = w / 4;
    for(x = [7 : slotx : l]) {
        for(y = [sloty/2 : sloty : w]) {
            translate([x,y,-0.5]) slot();
        }
    }
}

retain_l = 174;
retain_w = w/2;

translate([retain_l,retain_w,h-0.0001]) cylinder(r=7/2, h=5);

translate([9,3,h-0.0001]) translate([11,5,0]) rotate([0,0,180]) clip();
translate([9,w-5-3,h-0.0001])  clip();

translate([113,3,h-0.0001]) translate([11,5,0]) rotate([0,0,180]) clip();
translate([113,w-5-3,h-0.0001])  clip();

translate([208,3,h-0.0001]) translate([11,5,0]) rotate([0,0,180]) clip();
translate([208,w-5-3,h-0.0001])  clip();