//NotGate
module top_module( input in, output out );
assign out = ~in;
endmodule

//AndGate
module top_module( 
    input a, 
    input b, 
    output out );
    assign out = a & b;

endmodule

//NorGate
module top_module( 
    input a, 
    input b, 
    output out );
    assign out = ~a & ~b;

endmodule

//XNorGate
module top_module( 
    input a, 
    input b, 
    output out );
    assign out = (~a ^ ~b) | (a & b);

endmodule

or 

module top_module(
   input a,
   input b,
   output out );
   assign out = ~(a ^ b);

endmodule



