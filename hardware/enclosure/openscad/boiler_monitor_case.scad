// ESPHome Boiler Monitor enclosure - printable concept
// Units: mm
$fn = 48;
box_w = 100; box_h = 60; box_d = 30; wall = 2;

module base_box() {
  difference() {
    cube([box_w, box_h, box_d]);
    translate([wall, wall, wall]) cube([box_w-2*wall, box_h-2*wall, box_d]);
  }
}

module lid() {
  difference() {
    cube([box_w, box_h, 3]);
    translate([15, 15, -1]) cylinder(h=6, d=5);   // red LED
    translate([30, 15, -1]) cylinder(h=6, d=5);   // green LED
    translate([50, 15, -1]) cylinder(h=6, d=12);  // buzzer
    translate([75, 15, -1]) cylinder(h=6, d=7);   // mute button
  }
}

base_box();
translate([0, 70, 0]) lid();
