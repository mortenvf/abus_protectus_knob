
// ABUS Protectus knob (D-58922)
$fn=40;

total_length=45;
shaft_inner_diam=6.7;
shaft_inner_length=20;

shaft_outer_length=total_length;
shaft_outer_diam=9.5;

knob_large_diam=16;
knob_small_diam=5;
knob_length=25;

rounding_diam=2;


difference() {
    
    union() {
        cylinder(h=shaft_outer_length, d=shaft_outer_diam);
       
        translate([0,0,total_length-knob_length+rounding_diam/2]) {
            minkowski() {
            scale((knob_length-rounding_diam)/knob_length) {
                cylinder(h=knob_length/2, d1=knob_large_diam, d2=knob_small_diam);
                translate([0,0,knob_length/2])
                    cylinder(h=knob_length/2, d1=knob_small_diam, d2=knob_large_diam);
            };
            sphere(d=rounding_diam);
            }
            
        };
    }
    
    cylinder(h=shaft_inner_length, d=shaft_inner_diam);
}

