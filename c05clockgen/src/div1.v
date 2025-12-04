module div1(fi, rstn, fo);
input fi, rstn;//Divisor de Frecuencia 1:1k
output reg fo;  //Salida de divisor fi/1k
reg [8:0] cnt;  //Contador de 9-bit 1k/2  
always @(posedge fi)
  if(rstn == 0) 
    begin
    cnt <= 9'd0;
    fo <= 0;
    end
    else
    if(cnt<9'd500) //Medio ciclo
      cnt = cnt+9'd1;
    else
      begin
      fo <= !fo; //Cambia de nivel medio ciclo
      cnt<= 9'd0; //Reinicia contador
      end
endmodule