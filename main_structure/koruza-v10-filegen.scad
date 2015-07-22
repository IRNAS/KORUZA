use <koruza-v10.scad>

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

////////// parts for mounting the x y motors

//projection(cut = true) part_rubber();

////////// parts for various mounting

//translate([0,0,-127]) part_mc_mount();

// projection(cut = false) rotate(a=[90,0,0]) part_mc_plate();

//projection(cut = true) part_rubber();

// printing combinations

rotate(a=[-2,-2,0]) part_mounting_ring_inner();
translate([0,0,-3.5])  part_laser_mount();

/*
 rotate(a=[0,180,0]) rotate(a=[-2,-2,0])part_mounting_ring_outer();
 rotate(a=[0,180,0]) translate([0,0,0])  part_lens_mount_outer();
*/


