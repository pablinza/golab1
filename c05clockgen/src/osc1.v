module osc1(clk, rstn, fo); 
input clk, rstn;//Entrada clk de 27Mhz y reset 
output reg fo;  //Salida de divisor 4KHz
reg [11:0] cnt; //Contador de 12-bit. Log2[(27M/4k)/2]=11.7 
always @(posedge clk)
  if(rstn == 0) 
    begin
    cnt <= 12'd0;
    fo <= 0;
    end
    else
    if(cnt<12'd3375) //Medio ciclo (27M/4k)/2=3375
      cnt = cnt+12'd1;
    else
      begin
      fo <= !fo; //Cambia de nivel cada 0.125ms
      cnt<= 12'd0; //Reinicia contador
      end
endmodule