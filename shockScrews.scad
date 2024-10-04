$fn=32;
difference(){
    union(){
        cylinder(r=8.5/2, h=6);
        cylinder(r=12/2, h=3);
    }
    
    translate([0,0,-0.5]) cylinder(r=4/2, h=6+1);
    
    translate([0,0,3]) cylinder(r=7.3/2, h=3+1);
}