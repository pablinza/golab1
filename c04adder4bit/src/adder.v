//Circuito sumador de 4-bit
module adder(a,b,s);
input [3:0] a, b; //Declara las dos entradas de 4-bit
output [4:0] s; //Declara la salida 4bit + 1bit Acarreo
assign s = a + b; //Salida tiene la suma binaria a+b 
endmodule