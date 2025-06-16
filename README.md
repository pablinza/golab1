# FPGA GOWIN LAB1 pablinza@me.com
Descripcion de circuitos digitales I con HDL / Verilog
Carpeta con los proyectos generados por GOWIN EDA utilizando el chip GW1NR-LV9QN88PC6/I5 de la placa Tangnano9k.<br />
El software IDE esta disponible en la pagina del fabricante GOWIN [ --> Click](https://www.gowinsemi.com/en/support/home/) <br />
La documentacion de la Tangnano9k puedes encontrarla en el sitio [ --> Click](https://wiki.sipeed.com/hardware/en/tang/Tang-Nano-9K/Nano-9K.html) <br />
La descripcion de circuitos se realiza con Verilog evitando en lo posible el uso de codigo IP, a excepcion de implementaciones mas complejas.
Se utilizo la version linux GOWIN EDA V1.9.11.02 corriendo en la distro Debian 13, abajo dejo un video de como realizar la instalacion del software.
Se utiliza openFPGALoader para cargar el bitstream file.fs en la memoria FPGA [ -->Click](https://github.com/trabucayre/openFPGALoader) <br />
##Instalacion del GOWIN EDA y Activacion de Licencia 
**Video YOUTUBE**
Descripcion de la Placa Sipeed Tangnano9K para el montaje de circuitos en Laboratorio U.E.B Sistemas Digitales
<p align="center">
  <img src="/images/tangnano9k.png"></img>
</p>
##Lista de circuitos digitales implementados con tangnano9k
### - C01 - Circuito Multiplexor de 4 Canales [MUX4CH] 
El programa destella los leds conectados el PIC con frecuencia y ciclo de trabajo diferente, se hace uso del temporizador TMR0 para realizar las tareas de forma concurrente sin bloquear le ejecucion del programa principal. EL modulo TMR0 esta configurado para temporizar intervalos de 1ms. Para descripcion(https://youtu.be/rYyD9MK57Po)
### - C02 - Circuito Decodificador a 7-Segmentos [DECO7SEG]
El programa destella los leds conectados el PIC con frecuencia y ciclo de trabajo diferente, se hace uso del temporizador TMR0 para realizar las tareas de forma concurrente sin bloquear le ejecucion del programa principal. EL modulo TMR0 esta configurado para temporizar intervalos de 1ms. Para descripcion(https://youtu.be/rYyD9MK57Po)
Adjunto el siguiente link que muestra como instalar gowin y cargar el bitstream a la FPGA<br />
### - C03 - Circuito Sumador Paralelo de 4-bit [ADDER4B]
El programa destella los leds conectados el PIC con frecuencia y ciclo de trabajo diferente, se hace uso del temporizador TMR0 para realizar las tareas de forma concurrente sin bloquear le ejecucion del programa principal. EL modulo TMR0 esta configurado para temporizar intervalos de 1ms. Para descripcion(https://youtu.be/rYyD9MK57Po)
Adjunto el siguiente link que muestra como instalar gowin y cargar el bitstream a la FPGA<br />
### - C04 - Circuito Generador de Pulsos [CLOCKGEN]
El programa destella los leds conectados el PIC con frecuencia y ciclo de trabajo diferente, se hace uso del temporizador TMR0 para realizar las tareas de forma concurrente sin bloquear le ejecucion del programa principal. EL modulo TMR0 esta configurado para temporizar intervalos de 1ms. Para descripcion(https://youtu.be/rYyD9MK57Po)
Adjunto el siguiente link que muestra como instalar gowin y cargar el bitstream a la FPGA<br />
### - C05 - Circuito Contador de Segundos [COUNTERSEG]
El programa destella los leds conectados el PIC con frecuencia y ciclo de trabajo diferente, se hace uso del temporizador TMR0 para realizar las tareas de forma concurrente sin bloquear le ejecucion del programa principal. EL modulo TMR0 esta configurado para temporizar intervalos de 1ms. Para descripcion(https://youtu.be/rYyD9MK57Po)
Adjunto el siguiente link que muestra como instalar gowin y cargar el bitstream a la FPGA<br />

[Enlace](http://img.youtube.com/vi/w-GRu89glrg/0.jpg)](http://www.youtube.com/watch?v=w-GRu89glrg "Compilar en MPLABX")



Autor: Pablo Zarate, puedes contactarme a pablinza@me.com / pablinzte@gmail.com.  <br />
Visita mi Blog  [Blog de Contenidos](https://pablinza.blogspot.com/). <br />
Visita mi Canal [Blog de Contenidos](http://www.youtube.com/@pablozarate7524). <br />
Santa Cruz - Bolivia 
<br clear="left"/>
