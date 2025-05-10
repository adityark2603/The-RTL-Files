module HA(input logic a,b, output logic s, cout);
  assign s = a ^ b;
  assign cout = a & b;
endmodule

module FA(input logic x, y, cin, output logic s, carry);
  logic n1, n2, n3;
  HA I1(x, y, n1, n2);
  HA I2(n1, cin, s, n3);
  or I3(carry, n3, n2); 
endmodule

module RCA(input logic [3:0] a, b, input logic cin, output logic [3:0] s, output logic cout);
  logic c0, c1, c2, c3;
  FA FA1(a[0], b[0], cin, s[0], c0); 
  FA FA2(a[1], b[1], c0, s[1], c1);
  FA FA3(a[2], b[2], c1, s[2], c2);
  FA FA4(a[3], b[3], c2, s[3], c3);
  assign cout = c3;
endmodule
