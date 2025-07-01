# FPGA GOWIN LAB1 pablinza@me.com
Descripcion de Circuitos Logicos Combinatorios __CLC__ con HDL / Verilog
Carpeta con los proyectos generados por GOWIN EDA utilizando el chip GW1NR-LV9QN88PC6/I5 de la placa Tangnano9k.<br />
El software IDE esta disponible en la pagina del fabricante GOWIN [ --> Click](https://www.gowinsemi.com/en/support/home/) <br />
La documentacion de la Tangnano9k puedes encontrarla en el sitio [ --> Click](https://wiki.sipeed.com/hardware/en/tang/Tang-Nano-9K/Nano-9K.html) <br />
La descripcion de circuitos se realiza con Verilog evitando en lo posible el uso de codigo IP, a excepcion de implementaciones mas complejas.
Se utilizo la version linux GOWIN EDA V1.9.11.02 corriendo en la distro Debian 13, abajo dejo un video de como realizar la instalacion del software a utilizar <br />
Para cargar el bitstream del circuito en la memoria RAM/FPGA o EEPROM utilizare openFPGALoader por linea de comandos [ -->Click](https://github.com/trabucayre/openFPGALoader) <br />
## Instalacion del GOWIN EDA y Activacion de Licencia 
  [![Alt text](https://img.youtube.com/vi/hmUjBX4lj0o/0.jpg)](https://www.youtube.com/watch?v=hmUjBX4lj0o)
<br />
Descripcion de la Placa Sipeed Tangnano9K para el montaje de circuitos en Laboratorio Sistemas Digitales
<p align="center">
  <img src="/images/tangnano9k.png"></img>
</p> <br />
El siguiente enlace (https://pcz1.blogspot.com/2025/06/introduccion-tarjeta-fpga-tangnano-9k.html) a mi blog da una mejor descripcion resumida de esta tarjeta. Si realmente quieres entrar a fondo con el desarrollo de circuitos digitales te recomiendo que revisese los documentos del fabricante que son la mejor referencia de uso y resolucion de posibles errores (errdata). <br />
Cada carpeta del proyecto Gowin tiene el nombre precedido por el numero de actividad, en su estructura encontrara los modulos descriptivos Verilog con extension .v en la subcarpeta /src, mientras que el firmware .fs generado durante la sintesis se encuentra en la subcarpeta impl/pnr. <br />

## Lista de circuitos digitales implementados con tangnano9k
### - C01 - Multiplexor de 2 Canales con datos de 4-bit [MUX2S4B] **En Desarrollo
Este primer circuito muestra la implementacion de un multiplexor simple de dos canales para datos de 4-bit, la teoria y diseño de este circuito se describe mejor en el siguiente enlace a mi blog [ -->Click](https://pcz2.blogspot.com/2025/06/101-circuito-multiplexor.html). la descripcion del modulo Verilog se efectuara a nivel del comportamiento, para las pruebas de funcionamiento utilizaremos conmutadores (switches) a cada entrada y diodos led en las salidas. Puedes ver el video de la implementacion[ -->Click](https://youtu.be/rYyD9MK57Po)
<p align="center">
  <img src="/images/c01mux2s4bit.png"></img>
</p> <br />

### - C02 - Decodificador a 7-Segmentos [DECO7SEG] **En Desarrollo
En este ejemplo se muestra la implementacion de un circuito decodificador binario a 7-Segmentos, para las pruebas de funcionamiento utilizaremos como salida una pantalla de 7-segmentos tipo Anodo Comun y en la entrada cuatro pulsadores para conformar un numero de 4-bit. Opcionalmente se implementara una entrada de habilitacion para controlar en encendido y apagado de los segmentos.  
<p align="center">
  <img src="/images/c02deco7seg.png"></img>
</p> <br />

### - C03 - Multiplexor + Decodificador Encapsulado [MUX2DECO7SEG] **En Desarrollo
Este ejemplo muestra en base a dos los circuitos previamente descritos como crear un modulo de nivel superior __top.v__ que contiene la instancia de los módulos __mux2s4b.v__, __deco7seg.v__ de nivel inferior y define las conexiones entre sus entradas y salidas, creando la estructura completa del circuito. <br />
<p align="center">
  <img src="/images/c03mux2deco7.png"></img>
</p> <br />

### - C04 - Sumador Paralelo de 4-bit con Decodificador BCD [ADDER4B] **En Desarrollo
En desarrollo top.v<br />

### - C05 - Sumador Paralelo de 4-bit con Pantalla 7-Segmentos [ADDER4B] **En Desarrollo
En desarrollo top.v <br />


### - C06 - Sumador Paralelo de 4-bit con Pantalla 7-Segmentos multiplexado [CLOCKGEN] **En Desarrollo
En desarrollo top.v <br />


[Enlace](http://img.youtube.com/vi/w-GRu89glrg/0.jpg)](http://www.youtube.com/watch?v=w-GRu89glrg "Compilar en MPLABX")



Autor: Pablo Zarate, puedes contactarme a pablinza@me.com / pablinzte@gmail.com.  <br />
Visita mi Blog  [Blog de Contenidos](https://pablinza.blogspot.com/). <br />
Visita mi Canal [Blog de Contenidos](http://www.youtube.com/@pablozarate7524). <br />
Santa Cruz - Bolivia 
<br clear="left"/>
