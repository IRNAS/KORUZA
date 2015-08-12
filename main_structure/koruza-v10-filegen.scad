use <koruza-v10.scad>

//parts for KORUZA in printing configuration

// Combined print - Outer ring and lens lid

// rotate(a=[0,180,0]) rotate(a=[-2,2,0]) part_mounting_ring_outer();
// rotate(a=[0,180,0]) translate([0,0,0])  part_lens_mount_outer();

mode=0;

if (mode == 0) {
    //openscad -Dmode=0 -o koruza-v10-comb-ring_outer-lens_outer.stl koruza-v10-filegen.scad
    rotate(a=[0,0,0]) rotate(a=[2,-2,0]) part_mounting_ring_outer();
    rotate(a=[0,0,0]) translate([0,0,-2])  part_lens_mount_outer();
} else if (mode == 1) {
     //openscad -Dmode=1 -o koruza-v10-comb-ring_inner-lens_mount.stl koruza-v10-filegen.scad
    rotate(a=[2,-2,0]) part_mounting_ring_inner();
    translate([0,0,0])  part_lens_mount();
} else if (mode == 2) {
     //openscad -Dmode=2 -o koruza-v10-laser_mount.stl koruza-v10-filegen.scad
     translate([0,0,-3.5])  part_laser_mount();
} else if (mode == 3) {
     //openscad -Dmode=3 -o koruza-v10-laser_wedges.stl koruza-v10-filegen.scad
     rotate(a=[180,0,0]){translate([0,5,0]) part_laser_adj_l();part_laser_adj_r();}
} else if (mode == 4) {
     //openscad -Dmode=4 -o koruza-v10-sfp_mount.stl koruza-v10-filegen.scad
     part_sfp_mount();
} else if (mode == 5) {
     //openscad -Dmode=5 -o koruza-v10-sfp_spring_mount.stl koruza-v10-filegen.scad
     part_sfp_spring_mount();
} else if (mode == 6) {
     //openscad -Dmode=6 -o koruza-v10-motor_mount.stl koruza-v10-filegen.scad
     part_motor_mount();    
} else if (mode == 7) {
     //openscad -Dmode=7 -o koruza-v10-mc_mount.stl koruza-v10-filegen.scad
     translate([0,0,-127]) part_mc_mount(); 
} else if (mode == 8) {
     //openscad -Dmode=8 -o koruza-v10-mc_plate.stl koruza-v10-filegen.scad
     rotate(a=[90,0,0]) part_mc_plate();
    translate([0,13,0])
    rotate(a=[90,0,0]) part_mc_plate();
    translate([0,13*2,0])
    rotate(a=[90,0,0]) part_mc_plate();
    translate([0,13*3,0])
    rotate(a=[90,0,0]) part_mc_plate();     
}













////////// parts for mounting to enclosure

// rotate(a=[-2,-2,0]) part_mounting_ring_inner();
// rotate(a=[-2,-2,0]) part_mounting_ring_outer();

////////// parts for mounting the lens

// translate([0,0,-2]) part_lens_mount_outer();
// part_lens_mount();

////////// parts for mounting the aiming laser

// translate([0,0,-3.5])  part_laser_mount();
//old // part_laser_adj_mount();
// rotate(a=[180,0,0]){translate([0,5,0]) part_laser_adj_l();part_laser_adj_r();}

////////// parts for mounting the sfp module

// part_sfp_mount();
// part_sfp_spring_mount();

////////// parts for mounting the x y motors

// part_motor_mount();

////////// part rubber

// projection(cut = true) part_rubber();

////////// parts for various mounting

// translate([0,0,-127]) part_mc_mount();

/*
rotate(a=[90,0,0]) part_mc_plate();
translate([0,13,0])
rotate(a=[90,0,0]) part_mc_plate();
translate([0,13*2,0])
rotate(a=[90,0,0]) part_mc_plate();
translate([0,13*3,0])
rotate(a=[90,0,0]) part_mc_plate();
*/

////////// printing combinations


/* rotate(a=[-2,2,0]) part_mounting_ring_inner();
 translate([0,0,-3.5])  part_lens_mount(); */

/* rotate(a=[0,180,0]) rotate(a=[-2,2,0])part_mounting_ring_outer();
 rotate(a=[0,180,0]) translate([0,0,0])  part_lens_mount_outer(); */



