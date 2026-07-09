// Boiler Alert sensor holder for BPW40 phototransistor
$fn = 64;
outer_d = 10; inner_d = 5; length = 18;

difference() {
  cylinder(h=length, d=outer_d);
  translate([0,0,-1]) cylinder(h=length+2, d=inner_d);
}

translate([-10,-5,0]) cube([20,10,2]); // flat mounting pad
