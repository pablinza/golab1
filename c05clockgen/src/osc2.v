module osc2(clk, rstn, fo); 
input clk, rstn;//Entrada clk de 2.5MHz y reset 
output reg fo;  //Salida de divisor 1KHz
reg [10:0] cnt; //Contador de 11-bit. Log2[(2.5M/1k)/2]=10.2 
always @(posedge clk)
  if(rstn == 0) 
    begin
    cnt <= 11'd0;
    fo <= 0;
    end
    else
    if(cnt<1250) //Medio ciclo (2.5M/1k)/2=1250
      cnt = cnt+11'd1;
    else
      begin
      fo <= !fo; //Cambia de nivel cada 0.5ms
      cnt<= 11'd0; //Reinicia contador
      end
endmodule
