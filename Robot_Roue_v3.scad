$fn=180;


bride_roul1();
translate([0,0,14])roulement();
translate([0,0,35]) rotate([180,0,180]) bride_roul2();

translate([0,0, 17.5])  roue();
translate([0,0, 9+5+3.5]) rotate([180,0,0]) roue();
module roue(){
    difference(){
        rotate_extrude(){
        translate([11.2,0]) square([31-11.2,3.5]);
        translate([18/2,3.5]) square([31-18/2,3.5]);
        translate([15,7]) square([31-15,3]);
        }
        for(i=[0:2]){
            rotate([0,0,120*i]){
                translate([23,0]) cylinder(d=5, h=10);
                translate([23,0,6.5]) cylinder(d=8, h=10);
                }
            }
        }
    }

module roulement(){
    linear_extrude(7)
    difference(){
        circle(d=22);
        circle(d=8.2);
        }
    }




module bride_roul1(){
difference(){
    linear_extrude(9)
    difference(){
        circle(d=25);
        circle(d=5.1);
        translate([-1.5,0]) square([3,25]);
        }
        
    translate([-25/2,8,4.5]) rotate([0,90,0]) cylinder(d=4.5, h=25);

    translate([0,0,4.5]) for(i=[0,180]){    
        rotate([0,i]) translate([6,8]) rotate([0,90,0]) cylinder(d=8, h=10);
        }
    }
translate([0,0,9])    
linear_extrude(5)
    difference(){
    circle(d=11);
    circle(d=5.1);
    translate([-1.5,0]) square([3,25]);
    }
translate([0,0,14])     
linear_extrude(6.5){    
difference(){
    circle(d=8.2);
    circle(d=5.1);
    translate([-1.5,0]) square([3,25]);
    }}
}



module bride_roul2(){
difference(){
    linear_extrude(9)
    difference(){
        circle(d=25);
        circle(d=5.1);
        translate([-1.5,0]) square([3,25]);
        }
        
    translate([-25/2,8,4.5]) rotate([0,90,0]) cylinder(d=4.5, h=25);

    translate([0,0,4.5]) for(i=[0,180]){    
        rotate([0,i]) translate([6,8]) rotate([0,90,0]) cylinder(d=8, h=10);
        }
    }
translate([0,0,9])    
linear_extrude(5)
    difference(){
    circle(d=11);
    circle(d=5.1);
    translate([-1.5,0]) square([3,25]);
    }

}
