event_inherited();
function UpdateSelf(){
//Button For Car 1 (or button 1)
b1_rel_x = 0.2;
b1_rel_y = 0.1; // above first row

b1_rel_w = 0.6; // spans across both inputs
b1_rel_h = 0.1;

b1_hover = global.b1_hover;
b1_text = global.b1_text;
b1_clicked = global.b1_clicked;


//Button For Car 2 (or button 2)
b2_rel_x = 0.2;
b2_rel_y = 0.55; // above second car section

b2_rel_w = 0.6;
b2_rel_h = 0.1;

b2_hover = global.b2_hover;
b2_text = global.b2_text;
b2_clicked = global.b2_clicked;

//House number input boxes 1 (for car 1)
n1_rel_x = 0.2;
n1_rel_y = 0.25;
n1_rel_w = 0.25;
n1_rel_h = 0.12;

i1_rel_x = 0.55;
i1_rel_y = 0.25;
i1_rel_w = 0.25;
i1_rel_h = 0.12;

n1_active = global.n1_active;
n1_text = global.n1_text;
n1_hasANUMBER = global.n1_hasANUMBER;

i1_active = global.i1_active;
i1_text = global.i1_text;
i1_hasANUMBER = global.i1_hasANUMBER;

//House number input box 2 (for car 1)
n11_rel_x = 0.2;
n11_rel_y = 0.4;
n11_rel_w = 0.25;
n11_rel_h = 0.12;

i11_rel_x = 0.55;
i11_rel_y = 0.4;
i11_rel_w = 0.25;
i11_rel_h = 0.12;

n11_active = global.n11_active;
n11_text = global.n11_text;
n11_hasANUMBER = global.n11_hasANUMBER;

i11_active = global.i11_active;
i11_text = global.i11_text;
i11_hasANUMBER = global.i11_hasANUMBER;

//House number input box 1 (for car 2)
n2_rel_x = 0.2;
n2_rel_y = 0.7;
n2_rel_w = 0.25;
n2_rel_h = 0.12;

i2_rel_x = 0.55;
i2_rel_y = 0.7;
i2_rel_w = 0.25;
i2_rel_h = 0.12;


n2_active = global.n2_active;
n2_text = global.n2_text;
n2_hasANUMBER = global.n2_hasANUMBER;

i2_active = global.i2_active;
i2_text = global.i2_text;
i2_hasANUMBER = global.i2_hasANUMBER;

//House number input box 2 (for car 2)
n22_rel_x = 0.2;
n22_rel_y = 0.85;
n22_rel_w = 0.25;
n22_rel_h = 0.12;

i22_rel_x = 0.55;
i22_rel_y = 0.85;
i22_rel_w = 0.25;
i22_rel_h = 0.12;

n22_active = global.n22_active;
n22_text = global.n22_text;
n22_hasANUMBER = global.n22_hasANUMBER;

i22_active = global.i22_active;
i22_text = global.i22_text;
i22_hasANUMBER = global.i22_hasANUMBER;
}

function UpdateGlobal(){
global.b1_hover = b1_hover;
global.b1_text = b1_text;
global.b1_clicked = b1_clicked;

global.b2_hover = b2_hover;
global.b2_text = b2_text;
global.b2_clicked = b2_clicked ;

global.n1_active =n1_active ;
global.n1_text = n1_text;
global.n1_hasANUMBER = n1_hasANUMBER;

global.i1_active = i1_active ;
global.i1_text = i1_text ;
global.i1_hasANUMBER = i1_hasANUMBER ;

global.n11_active = n11_active ;
global.n11_text = n11_text ;
global.n11_hasANUMBER = n11_hasANUMBER ;

global.i11_active = i11_active ;
global.i11_text = i11_text ;
global.i11_hasANUMBER = i11_hasANUMBER ;

global.n2_active =n2_active ;
global.n2_text = n2_text ;
global.n2_hasANUMBER = n2_hasANUMBER ;

global.i2_active = i2_active ;
global.i2_text = i2_text ;
global.i2_hasANUMBER = i2_hasANUMBER ;

global.n22_active = n22_active ;
global.n22_text = n22_text ;
global.n22_hasANUMBER = n22_hasANUMBER ;

global.i22_active = i22_active ;
global.i22_text = i22_text ;
global.i22_hasANUMBER = i22_hasANUMBER ;
}