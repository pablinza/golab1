//Circuito para decodificar numero binario 5-bit a dos digitos bcd
module decobcd(num, bcd1, bcd2);
input [4:0] num; //Entrada del numero binario 5-bit
output reg [3:0] bcd1, bcd2; //Salidas BCD 
always @(*)
begin
    bcd2 = (num / 10); //Carga los decimas
    bcd1 = (num % 10); //Carga las unidades
end
endmodule
