module mux2s4b(s,a,b,y);
input s; //Entrada de selección
input [3:0] a,b; //Entradas de 4-bit
output reg [3:0] y; //Salida de 4-bit
always @(*) //Se activa con cualquier cambio
  if (s == 0) y = a; //Primera asignación
  else y = b; //Segunda asignación
endmodule