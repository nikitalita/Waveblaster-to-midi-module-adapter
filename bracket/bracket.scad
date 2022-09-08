low_profile=false;
bracket_depth = 1.4; // base bracket depth

bracket_reinforce_depth = 2;
bracket_reinforce_offset_x = -6;
bracket_reinforce_offset_y = -5;
cf_reinforce_screwmount_depth = 3;

bracket_hole=true;
isa_slot=false;
pcb_thickness=1.6;
/* [Screw mount tabs] */

screw_mount_width = 9;
screw_mount_depth = 2.5;
screw_mount_hole_r = 1.55; // m3 bolt
screw_mount_thread_distance_base = 8.0; //dont modify
screw_mount_inset_r = 2.9; // m3 bolt head
screw_mount_inset_depth = 0;
screw_mount_caulking = 2;

screw_mount_distance = 60.325;

first_mount_x = 31.75;
mount_hole_distance = 86.5;
screw_mount_y = 18.5;
second_mount_x = first_mount_x + mount_hole_distance;

/* [CF Card Slot] */

// Slot for the CF Card
cf_slot_enabled = true;

cf_slot_distance = 38.1;
cf_slot_y = 1.1;





notch_width = 2.79 + 0;
notch_length = notch_width;

shiftover_width = 2.79 + 0;
shiftover_length = shiftover_width;
// X is offset from the first screw hole
hole_1_x = 11.600;
// Y is offset from top of screw mount + pcb size
hole_1_y = 6.50;
hole_1_d = 9.5;

hole_2_x = 25.164;
hole_2_y = 6.50;
hole_2_d = 9.5;

hole_3_x = 77.12;
hole_3_y = 7;
hole_3_d = 6;


module __Customizer_Limit__ () {}  // This actually works
shown_by_customizer = false;


bracket_width_length = low_profile? 71.46 : 112.78;
//bracket_width_length = 0;
bracket_length = low_profile ? 79.20 : 120.02;
bracket_width = 18.29 + 0;
bottom_tab_width = 10.19 + 0;
bracket_bottom_tab_angle_length = (bracket_width - bottom_tab_width) / 2;

bracket_reinforce_width = bracket_width * .2;
bracket_reinforce_length = bracket_length * .78;

bracket_hole_dia = bracket_hole ? 4.75 : 0;
bracket_hole_distance = low_profile ? 66.19 : 107.01;

screw_mount_thread_distance = screw_mount_thread_distance_base + bracket_depth;
screw_mount_length = screw_mount_thread_distance * 1.4 + bracket_depth;


top_tab_width = 18.01 + bracket_depth / 3; // had to fudge this
top_tab_length = 11.43;
top_tab_x = 1;

top_tab_y = notch_width;
top_tab_screw_groove_dia = 4.42;
top_tab_screw_groove_fudge = -0.4; // kinda came out looking wrong so I'm faking it a bit here
top_tab_screw_groove_center = 3.18 + top_tab_screw_groove_fudge;
top_tab_screw_groove_distance = 6.35;
top_tab_screw_groove_translate_z = top_tab_length - top_tab_screw_groove_dia / 2 - top_tab_screw_groove_distance;

top_tab_useless_notch_length = 3.05;
top_tab_useless_notch_width = top_tab_screw_groove_distance - top_tab_screw_groove_dia / 2;
top_tab_useless_notch_z = top_tab_length - top_tab_useless_notch_width;
top_tab_useless_notch_y = top_tab_useless_notch_width / 2 + 8.05 - top_tab_useless_notch_length / 2;

top_tab_depth = 3;

cf_slot_width = 47.625;
cf_slot_height = 5.00;


module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
}

// top tab

translate([-top_tab_depth + top_tab_x, -top_tab_y, 0]) difference() {
    cube([top_tab_depth, top_tab_width, top_tab_length + bracket_depth]);
    translate([-.5, -1, top_tab_screw_groove_translate_z + bracket_depth]) {
        cube([top_tab_depth + 1, top_tab_screw_groove_center * 2, top_tab_screw_groove_dia]);
        translate([1, top_tab_screw_groove_center * 2, top_tab_screw_groove_dia / 2])
            rotate([0, 90, 0])
            cylinder(r=top_tab_screw_groove_dia / 2, h=top_tab_depth * 2, $fn=20, center=true);
    }
    translate([-.5, top_tab_useless_notch_y, top_tab_useless_notch_z + bracket_depth]) {
        cube([top_tab_depth + 1, top_tab_useless_notch_length, top_tab_useless_notch_width + 1]);
    }
}

// screw mounts
module screwmount(x) {
    
    translate([0, isa_slot? -screw_mount_y - screw_mount_depth : -bracket_width + screw_mount_y, 0]) // easier to be explicit here than factor it in the below statement
    translate([x - screw_mount_width / 2, bracket_width, -screw_mount_length + bracket_depth])
        // cut out the threads
        difference() {
            union() {
                cube([screw_mount_width, screw_mount_depth, screw_mount_length]);
                // add just a tiny bit of stuff to make the connection better
                difference() {
                    difference() {
                        translate([0, isa_slot? (-.5 * screw_mount_caulking): screw_mount_depth- screw_mount_caulking, (isa_slot? (screw_mount_length- screw_mount_caulking * .5) : (screw_mount_length-(screw_mount_depth -screw_mount_caulking)))])
                            rotate(a=-45, v=[1, 0, 0]) cube([screw_mount_width, screw_mount_caulking, screw_mount_caulking]);
                        translate([-5, -5, screw_mount_length]) cube([15, 15, 1]);
                        translate([isa_slot? -5: 0, isa_slot? 0: -20, 0]) cube([20, 20, 20]);
                    }
                }   
                
            }
            translate([screw_mount_width / 2, -2, screw_mount_length - screw_mount_thread_distance])
                rotate([0, 90, 90]) cylinder(r=screw_mount_hole_r, h=10, $fn=20);
            //inset
            translate([screw_mount_width / 2, isa_slot?(screw_mount_depth - screw_mount_inset_depth + 0.01):(screw_mount_inset_depth-screw_mount_depth + 0.01),
                screw_mount_length - screw_mount_thread_distance])
                    rotate([0, 90, 90])
                    cylinder(r=screw_mount_inset_r, h=screw_mount_inset_depth, $fn=20);
        }
}

screwmount(first_mount_x);
screwmount(second_mount_x);

// reinforce bracket body

//translate([
//    bracket_length / 2 - bracket_reinforce_length / 2 + bracket_reinforce_offset_x,
//    (isa_slot? (bracket_width  - bracket_width / 2 - bracket_reinforce_width / 2 + bracket_reinforce_offset_y) : bracket_width+bracket_reinforce_offset_y),
//    -bracket_reinforce_depth])
//    cube([bracket_reinforce_length, bracket_reinforce_width, bracket_reinforce_depth]);
////if (cf_slot_enabled) {
////    translate([
////        bracket_length / 2 - bracket_reinforce_length / 2 + bracket_reinforce_offset_x,
////        bracket_width - bracket_reinforce_width,
////        -cf_reinforce_screwmount_depth])
////        cube([bracket_reinforce_length, bracket_reinforce_width, cf_reinforce_screwmount_depth]);
////}
//



// build up the shiftover
translate([0, -shiftover_width, 0]) cube([shiftover_length, shiftover_width + .1, bracket_depth]);
translate([
    shiftover_length,
    -shiftover_width,
    bracket_depth])
    rotate([0, 90, 0])  
    prism(bracket_depth, shiftover_width, shiftover_width);

// Main bracket part
difference() {
    // the base bracket
    cube([bracket_length, bracket_width, bracket_depth]);
    
    // cf slot if enabled
    if (cf_slot_enabled) {
        translate([cf_slot_distance, bracket_width - cf_slot_height - cf_slot_y, -bracket_depth / 2])
            cube([cf_slot_width, cf_slot_height, bracket_depth * 2]);
    }
    
    // holes
    translate([first_mount_x+ hole_1_x,hole_1_y+screw_mount_y+pcb_thickness+screw_mount_depth,-bracket_depth])
        cylinder(10,hole_1_d/2,hole_1_d/2);
    
    translate([first_mount_x+ hole_2_x,hole_2_y+screw_mount_y+pcb_thickness+screw_mount_depth,-bracket_depth])
        cylinder(10,hole_2_d/2,hole_2_d/2);
    
    translate([first_mount_x+ hole_3_x,hole_3_y+screw_mount_y+pcb_thickness+screw_mount_depth,-bracket_depth])
        cylinder(10,hole_3_d/2,hole_3_d/2);
    // shape the tab at the bottom
    translate([bracket_width_length - 0.05, -.05, -.5])
        cube([bracket_length - bracket_width_length + 0.1, bracket_bottom_tab_angle_length + .1, bracket_depth + 1.05]);
    translate([bracket_width_length - 0.05, bracket_bottom_tab_angle_length + bottom_tab_width,-.5])
        cube([bracket_length - bracket_width_length + 0.1, bracket_bottom_tab_angle_length + 0.1, bracket_depth + 1]);

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
    translate([bracket_hole_distance, bracket_width / 2, -1.5])
        cylinder(r=bracket_hole_dia / 2, h=3, $fn=20);
    
    // notch out the shiftover
    translate([-0.95, bracket_width - notch_width, -1])
        cube([notch_length + 1, notch_width + .1, bracket_depth + 2]);
    translate([
        notch_length,
        bracket_width - notch_width,
        2])
        rotate([0, 90, 0])  
        prism(notch_width, notch_width + .2, notch_width);     
}
