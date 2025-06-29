/*Decodificador binario a 7 segmentos modo Anodo Comun
 *Orden de los segmentos <g><f><e><d><c><b><a>*/
module deco7seg(en, bcd, seg);
input en; //Habilitador de cambio 
input [3:0] bcd;     //Entradas del numero binario
output reg [6:0]seg;//Salidas a los segmentos
always @(*)   //Lista de eventos
if(en == 1) //Cambio solo con habilitacion
   case(bcd) //Salida gfedcba según numero bcd
     4'b0000: seg = 7'b100_0000; //numero 0
     4'b0001: seg = 7'b111_1001; //numero 1
     4'b0010: seg = 7'b010_0100; //numero 2
     4'b0011: seg = 7'b011_0000; //numero 3
     4'b0100: seg = 7'b001_1001; //numero 4
     4'b0101: seg = 7'b001_0010; //numero 5
     4'b0110: seg = 7'b000_0011; //numero 6
     4'b0111: seg = 7'b111_1000; //numero 7
     4'b1000: seg = 7'b000_0000; //numero 8
     4'b1001: seg = 7'b001_1000; //numero 9
     4'b1010: seg = 7'b000_1000; //letra  A
     4'b1011: seg = 7'b000_0011; //letra  b
     4'b1100: seg = 7'b011_0110; //letra  C
     4'b1101: seg = 7'b101_1110; //letra  d
     4'b1110: seg = 7'b000_0110; //letra  E
     4'b1111: seg = 7'b000_1110; //letra  F
  endcase
else seg = 7'b111_1111; //Segmentos apagados
endmodule