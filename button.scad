$fn=256;

difference() {
    cylinder(r1=75/2, r2=70/2, h=5);
    translate([0,0,3]) cylinder(r=65/2, h=5);
    
    translate([0,-10,-1]) cylinder(r=5, h=5);
    translate([0,10,-1]) cylinder(r=5, h=5);
}
