module top(clk, rstn, so1, so2);
input clk, rstn;
output so1, so2;
wire iclk, fo1, fo2;
GW_OSC u0(.oscout(iclk)); //Instancia al oscilador Core IP 250MHz/100 = 2.5MHz
osc1   u1(.clk(clk), .rstn(rstn), .fo(fo1)); //Senal de reloj Fo1=4KHz
osc2   u2(.clk(iclk),.rstn(rstn), .fo(fo2)); //Senal de reloj Fo2=1KHz
div1   u3(.fi(fo1), .rstn(rstn), .fo(so1));
div1   u4(.fi(fo2), .rstn(rstn), .fo(so2));
endmodule