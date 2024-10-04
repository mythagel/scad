$fn = 64;
// through hole diameter
id_hole = 10;

id = 12;    // Hole diameter
id_h = 1.6; // sheet thickness

od = id + 4;
od_h = 2;


difference() {
    union() {
        translate([0,0,id_h]) cylinder(r=od/2, h=od_h);
        cylinder(r=id/2, id_h);
        translate([0,0,-id_h]) cylinder(r1=id/2, r2=(id/2)+1, h=id_h/2);
        translate([0,0,-id_h/2]) cylinder(r2=id/2, r1=(id/2)+1, h=id_h/2);
    }

    translate([0,0,-id_h-0.5]) cylinder(r=id_hole/2, h=(od_h+id_h*2) + 1);
    
    translate([0,-0.2/2,-id_h-0.5]) cube([od/2+1, 0.2, (od_h+id_h*2) + 1]);
}

