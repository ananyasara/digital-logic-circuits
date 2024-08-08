input [4:0] a;
input [4:0] b;

output equal;

wire bit_4_equal;
wire bit_3_equal;
wire bit_2_equal;
wire bit_1_equal;
wire bit_0_equal;

wire temp_1;
wire temp_2;

assign bit_4_equal = a[4] ~^ b[4]
assign bit_3_equal = a[3] ~^ b[3];
assign bit_2_equal = a[2] ~^ b[2];
assign bit_1_equal = a[1] ~^ b[1];
assign bit_0_equal = a[0] ~^ b[0];

assign temp_1 = bit_4_equal & bit_3_equal; 
assign temp_2 = bit_2_equal & bit_1_equal;

assign equal = temp_1 & temp_2 & bit_0_equal;