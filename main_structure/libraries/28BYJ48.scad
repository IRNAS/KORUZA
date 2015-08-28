module coupler(){
	difference(){
		translate([0,0,10])
		cylinder(h=10,r=6,center=true,$fn=res); // coupler space
		translate([0,0,16])
		cylinder(h=10,r=4.25,center=true,$fn=6); // coupler space
		stepper_mounted(screw=0);
	}
}

module couplerKM200(){
	difference(){
		translate([0,0,13])
		cylinder(h=15,r=10,center=true,$fn=res); // coupler space
		translate([0,0,18])
		cylinder(h=15,r=15/2,center=true,$fn=res); // coupler space
		stepper_mounted(screw=0);
	}
}

module stepper_mounted(n_l=45,n_d=5,n_rot1=45,n_rot2=-135,n_w=7.2,n_z=2.5,screw_w=4,screw=2,res=30,scaling=1){
module 24byj48() {
	scaling=1.1;//scaling for 3d print fit
	//body
	cylinder(h=19,d=28,center=false,$fn=res);
	translate([-8,0,0])
	cube([14.2,15.6,19]);

	//mount tabs
	difference(){
		union(){
			translate([17.5,0,18])
			cylinder(h=1,d=7,center=false,$fn=res);
			translate([-17.5,0,18])
			cylinder(h=1,d=7,center=false,$fn=res);
			translate([0,0,18.5])
			cube([35,7,1],center=true);
		}
		translate([17.5,0,17.5])
		cylinder(h=2,d=4.2,center=false,$fn=res);
		translate([-17.5,0,17.5])
		cylinder(h=2,d=4.2,center=false,$fn=res);
	}
	
	
	//shaft
	translate([0,-8,0]){
		cylinder(h=20,d=7.8,center=false,$fn=res);
		difference(){
			cylinder(h=29,d=5*scaling,center=false,$fn=res);
			translate([0,0,26.01])
			difference(){
				cube([15,10,6],center=true);
				cube([10,3*scaling,6],center=true);
			}
		}
	}
}

module screw_nut_uncut(nut_depth, nut_length,nut_thick) {
	cylinder(h=nut_length,d=screw_w,center=false,$fn=res);
	translate([0,n_w/2,nut_depth+nut_thick/2-0.01])
	cube(size=[n_w,n_w*2,nut_thick], center=true);
}

module micrometer_screw(){
	translate([0,0,16])
	cylinder(h=10,d=12,center=true,$fn=res);
	translate([0,0,14+6+10])
	cylinder(h=28,d=6,center=true,$fn=res);
	translate([0,0,40])
	cylinder(h=10,d=8.0,center=true,$fn=res);
	translate([0,0,44.5])
	cylinder(h=1,d=10.2,center=true,$fn=res);
	translate([0,0,20])
	cylinder(h=30,d=18,center=true,$fn=res); // coupler space
}

module m4_screw(){
	translate([0,0,20])
	cylinder(h=20,d=5,center=true,$fn=res); // coupler space
	translate([0,0,28])
	rotate([0,0,45])
	cube([7.2,7.2,4],center=true);
}

//mounting screws

translate([17.5,8,n_l])
rotate([180,0,n_rot1])
screw_nut_uncut(n_d,n_l,n_z);
translate([-17.5,8,n_l])
rotate([180,0,n_rot2])
screw_nut_uncut(n_d,n_l,n_z);

translate([0,8,-18])
24byj48();

if(screw==1){
	micrometer_screw();
}
if(screw==2){
	m4_screw();
}
}
stepper_mounted(screw=1);