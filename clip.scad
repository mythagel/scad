$fn=64;


module side()
{

difference() {

    union(){
        hull() {
            cylinder(r=13.5/2, h=2);
            translate([0, 33.5 - (0.5 + 13.5/2 + 6.4),2/2]) cube([13.5,1,2], center=true);
            
 translate([-13.5/2,-13.5/2 + 33.5 - 6.4,0]) rotate([-15,0,0]) cube([13.5, 6.4, 2]);
        }
        
        hull(){
            translate([0,-13.5/2 + 8 + 5.6,-3]) rotate([0,90,0]) cylinder(r=0.25, h=11.8, center=true);

            translate([0,-13.5/2 + 8 + 5.6 - 9.5,0.25]) rotate([0,90,0]) cylinder(r=0.25, h=11.8, center=true);

            translate([0,-13.5/2 + 8 + 5.6 + 7.25,0.25]) rotate([0,90,0]) cylinder(r=0.25, h=11.8, center=true);
        }
    }

translate([0,-13.5/2 + 8 + 5.6,-3.25]) rotate([0,90,0]) cylinder(r=0.25, h=11.8, center=true);

union(){
    hull() {
    translate([-5.5/2,-3.5,2]) sphere(r=0.2);
    translate([5.5/2,-3.5,2]) sphere(r=0.2);
    }

    hull() {
    translate([-5.5/2,-1.5,2]) sphere(r=0.2);
    translate([5.5/2,-1.5,2]) sphere(r=0.2);
    }

    hull() {
    translate([-5.5/2,0.5,2]) sphere(r=0.2);
    translate([5.5/2,0.5,2]) sphere(r=0.2);
    }
}

translate([-7.6/2,-13.5/2 + 8,-4]) cube([7.6, 12.8, 6]);
}

}

side();
//translate([0,0,-7.5]) rotate([8,0,0]) rotate([0,180,0]) side();