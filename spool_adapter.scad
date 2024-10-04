$fn=64;
difference()
{
    union(){
        cylinder(r=80/2, h=0.32*4);
        cylinder(r=74/2, h=5);
    }
    translate([0,0,-1]) cylinder(r=54/2, h=20);
}