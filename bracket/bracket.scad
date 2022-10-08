resolution=32; // $fn
low_profile=0; // [0:false, 1:true]
bracket_thickness = 1.4; // base bracket depth

//Some 3d printers may have trouble with this, disable it if yours does.
angled_bottom_tab = 1; // [0:false, 1:true]
decorative_hole=0; // [0:false, 1:true]
// This puts the tabs at the top rather than the bottom, and hole y-offsets are adjusted accordingly
isa_slot=0; // [0:false, 1:true]
// This is used to calculate the y-offsets of the holes if the screw mount tabs are on the bottom
pcb_thickness=1.6;

top_tab_thickness = 3;

/* [Screw mount tabs] */

first_screw_tab_enabled = 1; // [0:false, 1:true]
second_screw_tab_enabled = 1; // [0:false, 1:true]
screw_mounts_on_bottom_of_pcb = 0; // [0:false, 1:true]
screw_mount_width = 7.5;
screw_mount_depth = 2.5;
screw_mount_hole_r = 1.55; // m3 bolt
screw_mount_thread_distance_base = 8;
screw_mount_inset_r = 2.9; // m3 bolt head
screw_mount_inset_depth = 0;
screw_mount_caulking = 0.5;

first_mount_x = 25.01;
mount_hole_distance = 54.9;
// If on top of the PCB, it is recommended to have this be at least the thickness of the PCB
screw_mount_y = 2.7;
second_mount_x = first_mount_x + mount_hole_distance;

/* [Round Holes] */
hole_1_enabled = 1; // [0:false, 1:true]
// X is offset from the first screw hole (i.e. the screw hole closest to the case mount cutout)
hole_1_x = 9.09;
// Y is offset from top of pcb
hole_1_y = 6.7;
hole_1_d = 9.7;

hole_2_enabled = 1; // [0:false, 1:true]
hole_2_x = 22.34;
hole_2_y = 6.7;
hole_2_d = 9.7;

hole_3_enabled = 1; // [0:false, 1:true]
hole_3_x = 34.71;
hole_3_y = 7.2;
hole_3_d = 7.5;

hole_4_enabled = 1; // [0:false, 1:true]
hole_4_x = 45.82;
hole_4_y = 7.2;
hole_4_d = 7.5;

hole_5_enabled = 0; // [0:false, 1:true]
hole_5_x = 37.69;
hole_5_y = 6.7;
hole_5_d = 9.5;

hole_6_enabled = 0; // [0:false, 1:true]
hole_6_x = 51.04;
hole_6_y = 6.7;
hole_6_d = 9.5;

/* [Rectangular Holes] */
// hole is at center of x,y positions
rectangular_hole_1_enabled = 0; // [0:false, 1:true]
// X is offset from the first screw hole (i.e. the screw hole closest to the case mount cutout)
rectangular_hole_1_x = 11.01;
// Y is offset from top of pcb
rectangular_hole_1_y = 6.5;
rectangular_hole_1_w = 10.5;
rectangular_hole_1_h = 10.5;

rectangular_hole_2_enabled = 0; // [0:false, 1:true]
rectangular_hole_2_x = 24.34;
rectangular_hole_2_y = 6.5;
rectangular_hole_2_w = 10.5;
rectangular_hole_2_h = 10.5;

rectangular_hole_3_enabled = 0; // [0:false, 1:true]
rectangular_hole_3_x = 63.41;
rectangular_hole_3_y = 7;
rectangular_hole_3_w = 10.5;
rectangular_hole_3_h = 10.5;

rectangular_hole_4_enabled = 0; // [0:false, 1:true]
rectangular_hole_4_x = 76.12;
rectangular_hole_4_y = 7;
rectangular_hole_4_w = 10.5;
rectangular_hole_4_h = 10.5;

rectangular_hole_5_enabled = 0; // [0:false, 1:true]
rectangular_hole_5_x = 37.69;
rectangular_hole_5_y = 6.5;
rectangular_hole_5_w = 10.5;
rectangular_hole_5_h = 10.5;

rectangular_hole_6_enabled = 0; // [0:false, 1:true]
rectangular_hole_6_x = 51.04;
rectangular_hole_6_y = 6.5;
rectangular_hole_6_w = 10.5;
rectangular_hole_6_h = 10.5;
// values taken from https://content.norcomp.net/rohspdfs/Connectors/PanelCutOuts/Panel_Cutout_D-Sub-Single.pdf

/* [D-Sub holes (Serial/VGA/Gameport)] */
// hole is at center of x,y positions
dsub_hole_1_type = 0; // [0:None, 15.46:DB-9(VGA/Serial), 23.79:DB-15(Gameport), 37.51:DB-25(Parallel)]
// X is offset from the first screw hole (i.e. the screw hole closest to the case mount cutout)
dsub_hole_1_x = 37.6;
// Y is offset from top of pcb
dsub_hole_1_y = 7.1;
dsub_hole_1_invert = 0; // [0:false, 1:true]

dsub_hole_2_type = 0; // [0:None, 15.46:DB-9(VGA/Serial), 23.79:DB-15(Gameport), 37.51:DB-25(Parallel)]
dsub_hole_2_x = 37.6;
dsub_hole_2_y = 7.1;
dsub_hole_2_invert = 0; // [0:false, 1:true]

dsub_hole_3_type = 0; // [0:None, 15.46:DB-9(VGA/Serial), 23.79:DB-15(Gameport), 37.51:DB-25(Parallel)]
dsub_hole_3_x = 37.6;
dsub_hole_3_y = 7.1;
dsub_hole_3_invert = 0; // [0:false, 1:true]

/* [DVI Hole]] */

dvi_hole_enabled = 0; // [0:false, 1:true]
dvi_hole_x = 37.6;
dvi_hole_y = 6;
dvi_hole_invert = 0; // [0:false, 1:true]


module __Customizer_Limit__ () {}  // This actually works
shown_by_customizer = 0; // [0:false, 1:true]

$fn = resolution;
bracket_width_length = low_profile? 71.46 : 112.78;
bracket_length = low_profile ? 79.20 : 120.02;
bracket_width = 18.42 + 0;
bottom_tab_width = 10.19 + 0;
bracket_bottom_tab_angle_length = (bracket_width - bottom_tab_width) / 2;

bracket_reinforce_width = bracket_width * .2;
bracket_reinforce_length = bracket_length * .78;

bracket_hole_dia = decorative_hole ? 4.75 : 0;
bracket_hole_distance = low_profile ? 66.19 : 107.01;

screw_mount_thread_distance = screw_mount_thread_distance_base + bracket_thickness;
screw_mount_length = screw_mount_thread_distance * 1.4 + bracket_thickness;

bracket_reinforce_depth = 0;
bracket_reinforce_offset_x = -6;
bracket_reinforce_offset_y = -5;

// top notch
notch_width = 2.54;
notch_length = 3.94-.86; // 3.94 - specified thickness of .86mm (vs actual thickness)

top_tab_width = 19.05; // had to fudge this
top_tab_length = 11.43;
top_tab_x = 0;
top_tab_y = 3.17; // 21.59 - 18.42
top_tab_screw_groove_dia = 4.42;
top_tab_screw_groove_fudge = -0.4; // kinda came out looking wrong so I'm faking it a bit here
top_tab_screw_groove_center = 3.18 + top_tab_screw_groove_fudge;
top_tab_screw_groove_distance = 6.35;
top_tab_screw_groove_translate_z = top_tab_length - top_tab_screw_groove_dia / 2 - top_tab_screw_groove_distance;

top_tab_useless_notch_length = 3.05;
top_tab_useless_notch_width = top_tab_screw_groove_distance - top_tab_screw_groove_dia / 2;
top_tab_useless_notch_z = top_tab_length - top_tab_useless_notch_width;
top_tab_useless_notch_y = top_tab_useless_notch_width / 2 + 8.05 - top_tab_useless_notch_length / 2;


module prism(l, w, h){
     polyhedron(
         points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
         faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
         );
}
// screw mounts
module screwmount(x) {
  
  translate([0, isa_slot? -screw_mount_y - screw_mount_depth : -bracket_width + screw_mount_y, 0]) // easier to be explicit here than factor it in the below statement
  translate([x - screw_mount_width / 2, bracket_width, -screw_mount_length + bracket_thickness])
    // cut out the threads
    difference() {
      union() {
        cube([screw_mount_width, screw_mount_depth, screw_mount_length]);
        //top caulking
        if ((isa_slot && bracket_width-screw_mount_y +screw_mount_caulking < bracket_width) || (!isa_slot &&  screw_mount_y + screw_mount_depth+ screw_mount_caulking < bracket_width)){
        difference(){
        translate([screw_mount_width, screw_mount_depth-.05, screw_mount_length-bracket_thickness-screw_mount_caulking +.05])
          rotate([90,0,180])
          prism(screw_mount_width,screw_mount_caulking+.05,screw_mount_caulking+.05);
        }
        }
        //bottom caulking
        if ((isa_slot && bracket_width-screw_mount_y -screw_mount_depth -screw_mount_caulking > 0) || (!isa_slot && screw_mount_y - screw_mount_caulking > 0)){
        translate([0, 0, screw_mount_length-bracket_thickness-screw_mount_caulking +.05])
          rotate([90,0,0])
          prism(screw_mount_width,screw_mount_caulking+.05,screw_mount_caulking+.05);
        }        
      }
       translate([screw_mount_width / 2, -2, screw_mount_length - screw_mount_thread_distance])
         rotate([0, 90, 90]) cylinder(r=screw_mount_hole_r, h=10, $fn=20);
      //inset
      translate([screw_mount_width / 2, ((isa_slot && screw_mounts_on_bottom_of_pcb) || (!isa_slot && !screw_mounts_on_bottom_of_pcb))?(screw_mount_depth - screw_mount_inset_depth + 0.01):(-0.01),
        screw_mount_length - screw_mount_thread_distance])
          rotate([0, 90, 90])
          cylinder(r=screw_mount_inset_r, h=screw_mount_inset_depth, $fn=20);
    }
}

module translate_hole(hole_x,hole_y){
  y_offset_b = screw_mounts_on_bottom_of_pcb ? pcb_thickness + screw_mount_depth : 0;
  y_offset = !isa_slot ? 
    hole_y + screw_mount_y + y_offset_b
    : bracket_width - (hole_y + screw_mount_y + y_offset_b);
  translate([first_mount_x+ hole_x, y_offset, -bracket_thickness])
    children();
}
module round_hole(hole_x,hole_y,hole_d){
  translate_hole(hole_x,hole_y)
    cylinder(10,hole_d/2,hole_d/2);
}
module rectangular_hole(hole_x,hole_y,hole_w,hole_h){
  translate_hole(hole_x,hole_y)
    cube([10, hole_w, hole_h], center=true);
}

module dsub_hole(hole_x,hole_y,c_sz, invert = false){
  translate_hole(hole_x,hole_y)
    dsub_cutout(c_sz, invert);
}
module dsub_cutout(c_sz, invert=false){
  $fn=64;
  rotate([0,0,90]){
    top_x_coord = !invert ? c_sz/2 : (c_sz-2)/2;
    bottom_x_coord = !invert ? (c_sz-2)/2 : c_sz/2;
    hole_coord = (c_sz+9.53)/2;
    y_distance = 5.66;
    y_coord = y_distance/2;
    translate([0,hole_coord,0])
        cylinder(r=1.55,h=10);
    translate([0,-hole_coord,0])
        cylinder(r=1.55,h=10);
    hull(){
      translate([y_coord,-top_x_coord,0]){
      cylinder(r=2.51,h=10);
      }
      translate([y_coord,top_x_coord,0]){
      cylinder(r=2.51,h=10);
      }
      translate([-y_coord,-bottom_x_coord,0]){
      cylinder(r=2.51,h=10);
      }
      translate([-y_coord,bottom_x_coord,0]){
      cylinder(r=2.51,h=10);
      }
    }
  }
}
module dvi_hole(hole_x,hole_y, invert = false){
  translate_hole(hole_x,hole_y)
    dvi_cutout(invert);
}
module dvi_cutout(invert=false){
  $fn=64;
  rotate([0,0,90]){
    a_sz = 26.1;
    top_r_sz = 1.2;
    bottom_r_sz = 3;
    c_sz = a_sz - (top_r_sz *2);
    e_sz = c_sz - ((bottom_r_sz - top_r_sz) * 2);
    hole_coord = 32.5 /2;
    y_distance = 9.6 - (top_r_sz+ bottom_r_sz);

    top_x_coord = !invert ? c_sz/2 : e_sz/2;
    bottom_x_coord = !invert ? e_sz/2 : c_sz/2;
    top_r = !invert ? top_r_sz : bottom_r_sz;
    bottom_r = !invert ? bottom_r_sz: top_r_sz ;
    
    y_coord = y_distance/2;

    translate([0,hole_coord,0])
        cylinder(r=1.6,h=10);
    translate([0,-hole_coord,0])
        cylinder(r=1.6,h=10);
    hull(){
      translate([y_coord,-top_x_coord,0]){
      cylinder(r=top_r,h=10);
      }
      translate([y_coord,top_x_coord,0]){
      cylinder(r=top_r,h=10);
      }
      translate([-y_coord,-bottom_x_coord,0]){
      cylinder(r=bottom_r,h=10);
      }
      translate([-y_coord,bottom_x_coord,0]){
      cylinder(r=bottom_r,h=10);
      }
    }
  }
}

rotate([0,0,0])
union() { 
    
translate([-top_tab_thickness + top_tab_x, -top_tab_y, 0]) difference() {
  cube([top_tab_thickness, top_tab_width, top_tab_length + bracket_thickness]);
  translate([-.5, -1, top_tab_screw_groove_translate_z + bracket_thickness]) {
    cube([top_tab_thickness + 1, top_tab_screw_groove_center * 2, top_tab_screw_groove_dia]);
    translate([1, top_tab_screw_groove_center * 2, top_tab_screw_groove_dia / 2])
      rotate([0, 90, 0])
      cylinder(r=top_tab_screw_groove_dia / 2, h=top_tab_thickness * 2, $fn=20, center=true);
  }
  translate([-.5, top_tab_useless_notch_y, top_tab_useless_notch_z + bracket_thickness]) {
    cube([top_tab_thickness + 1, top_tab_useless_notch_length, top_tab_useless_notch_width + 1]);
  }
}
if (first_screw_tab_enabled){
  screwmount(first_mount_x);  
}
if (second_screw_tab_enabled) {
  screwmount(second_mount_x);
}

// bottom notch
shiftover_width = top_tab_y;
shiftover_length = 2.92;



// build up the shiftover
translate([0, -shiftover_width, 0]) cube([shiftover_length, shiftover_width + .1, bracket_thickness]);
translate([
  shiftover_length,
  -shiftover_width,
  bracket_thickness])
  rotate([0, 90, 0])  
  prism(bracket_thickness, shiftover_width, shiftover_width);

// Main bracket part
difference() {
  // the base bracket
  cube([bracket_length, bracket_width, bracket_thickness]);

  // carve out the angles
  translate([
    bracket_width_length,
    bracket_bottom_tab_angle_length - .05,
    2])
    rotate([0, 90, 0])
    rotate([180, 0, 0])  
    prism(bracket_bottom_tab_angle_length, bracket_bottom_tab_angle_length, bracket_bottom_tab_angle_length + 0.1);
  // other side
  translate([
    bracket_width_length + 0.1,
    bracket_bottom_tab_angle_length + bottom_tab_width + .05,
    -2])
    rotate([0, 90, 0])
    rotate([180, 0, 180])  
    prism(bracket_bottom_tab_angle_length, bracket_bottom_tab_angle_length, bracket_bottom_tab_angle_length + 0.1);  
  
  // ornamental hole
  if (decorative_hole){
      translate([bracket_hole_distance, bracket_width / 2, -1.5])
        cylinder(r=bracket_hole_dia / 2, h=3, $fn=20);
  }
  // notch out the shiftover
  translate([-0.95, bracket_width - notch_width, -1])
    cube([notch_length + 1, notch_width + .1, bracket_thickness + 2]);
  translate([
    notch_length,
    bracket_width - notch_width,
    2])
    rotate([0, 90, 0])  
    prism(notch_width, notch_width + .2, notch_width);
  // shape the tab at the bottom
  if (angled_bottom_tab){
    translate([bracket_width_length - 0.05, -.05, -.5])
      cube([bracket_length - bracket_width_length + 0.1, bottom_tab_width+ bracket_bottom_tab_angle_length * 2 + .1, bracket_thickness + 1.05]);
  } else {
    translate([bracket_width_length - 0.05, -.05, -.5])
      cube([bracket_length - bracket_width_length + 0.1, bracket_bottom_tab_angle_length + .1, bracket_thickness + 1.05]);
    translate([bracket_width_length - 0.05, bracket_bottom_tab_angle_length + bottom_tab_width,-.5])
      cube([bracket_length - bracket_width_length + 0.1, bracket_bottom_tab_angle_length + 0.1, bracket_thickness + 1]);

  }
  
  y_offset_b = screw_mounts_on_bottom_of_pcb ? pcb_thickness + screw_mount_depth : 0;
  // holes

  //round holes
  if (hole_1_enabled){
    round_hole(hole_1_x,hole_1_y,hole_1_d);
  }
  if (hole_2_enabled){
    round_hole(hole_2_x,hole_2_y,hole_2_d);
  }
  if (hole_3_enabled){
    round_hole(hole_3_x,hole_3_y,hole_3_d);
  }
  if (hole_4_enabled){
    round_hole(hole_4_x,hole_4_y,hole_4_d);
  }
  if (hole_5_enabled){
    round_hole(hole_5_x,hole_5_y,hole_5_d);
  }
  if (hole_6_enabled){
    round_hole(hole_6_x,hole_6_y,hole_6_d);
  }
  //rectangular holes
  if (rectangular_hole_1_enabled){
    rectangular_hole(rectangular_hole_1_x,rectangular_hole_1_y,rectangular_hole_1_w, rectangular_hole_1_h);
  }
  if (rectangular_hole_2_enabled){
    rectangular_hole(rectangular_hole_2_x,rectangular_hole_2_y,rectangular_hole_2_w, rectangular_hole_2_h);
  }
  if (rectangular_hole_3_enabled){
    rectangular_hole(rectangular_hole_3_x,rectangular_hole_3_y,rectangular_hole_3_w, rectangular_hole_3_h);
  }
  if (rectangular_hole_4_enabled){
    rectangular_hole(rectangular_hole_4_x,rectangular_hole_4_y,rectangular_hole_4_w, rectangular_hole_4_h);
  }
  if (rectangular_hole_5_enabled){
    rectangular_hole(rectangular_hole_5_x,rectangular_hole_5_y,rectangular_hole_5_w, rectangular_hole_5_h);
  }
  if (rectangular_hole_6_enabled){
    rectangular_hole(rectangular_hole_6_x,rectangular_hole_6_y,rectangular_hole_6_w, rectangular_hole_6_h);
  }
  if (dsub_hole_1_type > 0){
    dsub_hole(dsub_hole_1_x, dsub_hole_1_y, dsub_hole_1_type, dsub_hole_1_invert);
  }
  if (dsub_hole_2_type > 0){
    dsub_hole(dsub_hole_2_x, dsub_hole_2_y, dsub_hole_2_type, dsub_hole_2_invert);
  }
  if (dsub_hole_3_type > 0){
    dsub_hole(dsub_hole_3_x, dsub_hole_3_y, dsub_hole_3_type, dsub_hole_3_invert);
  }
  if (dvi_hole_enabled){
    dvi_hole(dvi_hole_x, dvi_hole_y, dvi_hole_invert);
  }
}

if (angled_bottom_tab){
  difference(){
    translate([bracket_width_length-0.05, bracket_bottom_tab_angle_length-0.1,0])
    rotate([0,-5,0])
    translate([-0.2,0,0])
    cube([bracket_length - bracket_width_length + 0.1, bottom_tab_width+.3, bracket_thickness ]);
    
    translate([bracket_width_length-0.3, bracket_bottom_tab_angle_length-0.2,-bracket_thickness])
    cube([bracket_length - bracket_width_length, bottom_tab_width+.4,1.4]);
  }
}
}
// reinforce bracket body

//translate([
//  bracket_length / 2 - bracket_reinforce_length / 2 + bracket_reinforce_offset_x,
//  (isa_slot? (bracket_width  - bracket_width / 2 - bracket_reinforce_width / 2 + bracket_reinforce_offset_y) : bracket_width+bracket_reinforce_offset_y),
//  -bracket_reinforce_depth])
//  cube([bracket_reinforce_length, bracket_reinforce_width, bracket_reinforce_depth]);
////if (cf_slot_enabled) {
////  translate([
////    bracket_length / 2 - bracket_reinforce_length / 2 + bracket_reinforce_offset_x,
////    bracket_width - bracket_reinforce_width,
////    -cf_reinforce_screwmount_depth])
////    cube([bracket_reinforce_length, bracket_reinforce_width, cf_reinforce_screwmount_depth]);
////}
//

