module regle(){
    color([.4,.4,.6])
    linear_extrude(3)
    difference(){
        square([100,20]);
        translate([10,10]) circle(d=8);
        translate([50,10]) circle(d=8);
        translate([90,10]) circle(d=8);
        }
   }

module profil(L){
    linear_extrude(L){
    translate([0,0]) square([100,8]);
    translate([5,8]) square([100,5]);
    translate([0,13]) square([100,8]);
    }
    }
translate([0,0,250])    
union(){
translate([0,0,0]) rotate([0,90,90]) translate([0,-21,0]) profil(1170);    
translate([640-21,0,0]) rotate([0,90,90]) translate([0,-21,0]) profil(1170);    

    
for(n=[0:8]){    
translate([0,n*130,0])rotate([90,0,90]) profil(640);
    }
}
translate([21,0,250]) rotate([0,90,0]) profil(640-(21*2));


translate([0,1170-20,250-20]) 
rotate([50,0])
translate([0,25,20])   
union(){
translate([0,0,0]) rotate([0,90,90]) translate([0,-21,0]) profil(750);    
translate([640-21,0,0]) rotate([0,90,90]) translate([0,-21,0]) profil(750);    
for(n=[0:5]){    
translate([0,n*130,0])rotate([90,0,90]) profil(640);
    }
translate([21*2,21*2+603,-250]) rotate([0,0,90]) profil(250); //pied
translate([640-21,21*2+603,-250]) rotate([0,0,90]) profil(250); //pied
translate([21+3,-10-25,-10]) rotate([-90,0,90]) regle();
translate([640-21,-10-25,-10]) rotate([-90,0,90]) regle();
}

translate([21*2,21*2]) rotate([0,0,90]) profil(250);
translate([640-21,21*2]) rotate([0,0,90]) profil(250);

translate([21,21]) rotate([0,0,0]) profil(250);
translate([640-21,21*2]) rotate([0,0,180]) profil(250);

translate([21,21+1060]) rotate([0,0,-90]) profil(250);
translate([21,21+1060]) rotate([0,0,0]) profil(250);

translate([640-21*2,21+1060]) rotate([0,0,-90]) profil(250);
translate([640-21,21*2+1060]) rotate([0,0,180]) profil(250);


















