// This library designs screw assemblies such that you place them in the designed object and substract them from your shape. Then 3D print the object, insert screws and nuts to assemble it.

// Basic DIN912 screw, HEX socket
// head diameter is a function of screw diameter head_h=d*1.5+1
// head height is the same as the diameter
// fit factor is used to scale for better fit when 3D printer, applies to diameter only
// set to 1 if you want to screw into plastic or to 1.2 if the screw should go through
module screw_din912(l=16,d=3,fit=1.2,res=20){
	translate([0,0,-l/2])
	cylinder(h=l,r=d/2*fit,center=true,$fn=res);
	//head
	translate([0,0,d/2])
	cylinder(h=d,r=(d*1.5+1)/2*fit,center=true,$fn=res);
}

module screw_din912_path(l=16,d=3,fit=1.2,path_l=100,res=20){
	translate([0,0,-l/2])
	cylinder(h=l,r=d/2*fit,center=true,$fn=res);
	//head transformed into insert path
	translate([0,0,path_l/2])
	cylinder(h=path_l,r=(d*1.5+1)/2*fit,center=true,$fn=res);
}

// Basic DIN965 screw, Philips head countersunk head 
// head diameter is a function of screw diameter  approximately by d*1.9
// head height is about 0.55 of diameter
// fit factor is used to scale for better fit when 3D printer, applies to diameter only
// set to 1 if you want to screw into plastic or to 1.2 if the screw should go through
module screw_din965(l=16,d=3,fit=1.2,res=20){
	translate([0,0,-l/2])
	cylinder(h=l,r=d/2*fit,center=true,$fn=res);
	//head
	translate([0,0,d*0.26])
	cylinder(h=d*0.6,r1=d/2*fit,r2=d*1.9/2*fit,center=true,$fn=res);
}

module screw_din965_path(l=16,d=3,fit=1.2,res=20){
	screw_din965(l,d,fit,res);
	translate([0,0,l/2+d*0.55])
	cylinder(h=l,r=d*1.9/2*fit,center=true,$fn=res);
}

// Basic DIN562 square nut, must useful for 3D prints, normal nuts start spinning
// d defined as the screw diameter
// nut width lengths is d*1.5+1
// bottom of the nut is zero z
// thickness is not proportional to screw size exactly, but d/2+0.2 works good enough
// use fit 1.2 to be able to easily insert it into the 3D printed part
module nut_din562(d=3.5,fit=1.2){
	translate([0,0,((d/2+0.2)*fit)/2])
	cube([(d*1.5+1)*fit,(d*1.5+1)*fit,(d/2+0.2)*fit], center=true);
}

// DIN562 nut with added insert path
module nut_din562_path(d=3.5,fit=1.2,path_l=30){
	translate([0,0,((d/2+0.2)*fit)/2])
	cube([(d*1.5+1)*fit,(d*1.5+1)*fit,(d/2+1)*fit], center=true);
	//path
	translate([path_l/2,0,((d/2+0.2)*fit)/2])
	cube([path_l,(d*1.5+1)*fit,(d/2+1)*fit], center=true);
}

// Basic combination of the screw and nut
// nut depth is defined as the length of the screw looking out of the nut
module screw_din912_nut_din562(l=16,d=3,nut_depth=5,fit=1.2,res=20){
	screw_din912_path(l,d,fit,res);
	translate([0,0,-l+nut_depth])
	nut_din562_path(d,fit);
}

// Most useful combination, screw + nut with insert patchs, so you can be sure that you can insert the screw and the nut into the 3D printed part
// nut depth is defined as the length of the screw looking out of the nut
module screw_din912_nut_din562(l=16,d=3,nut_depth=5,screw_path=100,nut_path=30,fit=1.2,res=20){
	screw_din912_path(l,d,fit,screw_path,res);
	translate([0,0,-l+nut_depth])
	nut_din562_path(d,fit,nut_path);
    //small path for pushing the nut out
    /*translate([0,0,-l+nut_depth+1])
    rotate(a=[0,90,0])
    translate([0,0,-50])
	cylinder(h=100,r=1,center=true,$fn=res);*/
}

// Useful combination, screw + nut with insert patchs + paths to push nuts out, so you can be sure that you can insert the screw and the nut into the 3D printed part
// nut depth is defined as the length of the screw looking out of the nut
module screw_din912_nut_din562_out(l=16,d=3,nut_depth=5,screw_path=100,nut_path=30,fit=1.2,res=20){
	screw_din912_nut_din562(l,d,nut_depth,screw_path,nut_path,fit,res);
    //small path for pushing the nut out
    translate([0,0,-l+nut_depth+1])
    rotate(a=[0,90,0])
    translate([0,0,-50])
	cylinder(h=100,r=1,center=true,$fn=res);
}

screw_din912_nut_din562_out();