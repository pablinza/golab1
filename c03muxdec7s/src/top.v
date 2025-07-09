//Declaracion del modulo de nivel superior Top Module Entity
module top(bcd1,bcd2,sel,en,seg);
input [3:0] bcd1, bcd2; //Entradas bcd
input sel; //Entrada de seleccion 
input en;  //Entrada de habilitacion
output [6:0] seg;  //Salida a los segmentos
wire [3:0] bcd; //4-bit salida del multiplexor
mux2s4b u1(.s(sel),.a(bcd1),.b(bcd2),.y(bcd)); //Instancia 1
deco7seg u2(.en(en),.bcd(bcd),.seg(seg)); //Instancia 2
endmodule