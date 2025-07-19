//Declaracion del modulo de nivel superior Top Module Entity
module top(en,a,b,dp1,dp2);
input [3:0] a,b; //Dos entradas de 4-bit
input en; //Habilitador de la pantalla
output [6:0] dp1, dp2; //Dos salidas de 7-Segmentos
wire [4:0] res; //Bus interno para numero de 5-bit
wire [3:0] lsd, msd; //Bus interno para dos digitos bcd 4-bit
adder    u1(.a(a),.b(b),.s(res)); //Instancia del sumador adder.v
decobcd  u2(.num(res),.bcd1(lsd),.bcd2(msd)); //Instancia del decodificador a bcd
deco7seg u3(.en(en),.bcd(lsd),.seg(dp1));//Instancia del decodificador a 7-Segmentos
deco7seg u4(.en(en),.bcd(msd),.seg(dp2));//Instancia del decodificador a 7-Segmentos
endmodule
