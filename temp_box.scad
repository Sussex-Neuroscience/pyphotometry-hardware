//pyphotometry temp container
//all values in mm

boardx = 83+1;
boardy = 58+1;
boardz = 25+1;
boxx = boardx+8;
boxy = boardy+8;
boxz = boardz/2;
holebase = 5;
holediam = 3;
holeoffset = 2;
baseh = 4;
$fn=30;
difference(){
cube([boxx,boxy,boxz]);
translate([(boxx-boardx)/2,(boxy-boardy)/2,2]){
    cube([boardx,boardy,boardz]);

    }//end translate
}//end difference
translate([(boxx-boardx)/2,(boxy-boardy)/2,2]){
    translate([holeoffset+holediam,holeoffset+holediam,0]){
        cylinder(h=baseh,d=holebase);
        }//end translate
    translate([boardx-(holeoffset+holediam),holeoffset+holediam,0]){
        cylinder(h=baseh,d=holebase);
        }//end translate
    translate([boardx-(holeoffset+holediam),boardy-(holeoffset+holediam),0]){
        cylinder(h=baseh,d=holebase);
        }//end translate
        translate([(holeoffset+holediam),boardy-(holeoffset+holediam),0]){
        cylinder(h=baseh,d=holebase);
        }//end translate
    }//end translate


