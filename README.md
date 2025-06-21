# FPGA GOWIN LAB1 pablinza@me.com
Descripcion de circuitos digitales I con HDL / Verilog
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
<p align="left">
  <img src="/images/tangnano9k.png"></img>
</p> <br />
El siguiente enlace [ --> Click](https://pcz1.blogspot.com/2025/06/introduccion-tarjeta-fpga-tangnano-9k.html) <br /> 
a mi blog se da una mejor descripcion de esta tarjeta, pero si realmente quieres entrar a fondo con el desarrollo de circuitos digitales te recomiendo que revisese los documentos del fabricante que son la mejor referencia de uso y resolucion de posibles errores (errdata).

## Lista de circuitos digitales implementados con tangnano9k
### - C01 - Circuito Multiplexor de 4 Canales [SMUX4] **En Desarrollo
Nuestro primer circuito muestra como implementar un multiplexor simple de cuatro canales, en este ejemplo trabajaremos el diseno empezando por una tabla de verdad para obtener la funcion logica simplificada y elaborar el esquema logico del circuito con la finalidad de llevar a cabo la descripcion del circuito en Verilog en los niveles de abstraccion visto en clase(puertas logicas, funcion logica y comportamiento). El las pruebas del funcionamiento utilizaremos pulsadores en las entradas y un led para las salidas. Puedes ver el video de la implementacion[ -->Click](https://youtu.be/rYyD9MK57Po)

### - C02 - Circuito Decodificador a 7-Segmentos [DECO7SEG] **En Desarrollo
El programa destella los leds conectados el PIC con frecuencia y ciclo de trabajo diferente, se hace uso del temporizador TMR0 para realizar las tareas de forma concurrente sin bloquear le ejecucion del programa principal. EL modulo TMR0 esta configurado para temporizar intervalos de 1ms. 
Adjunto el siguiente link que muestra como instalar gowin y cargar el bitstream a la FPGA<br />

### - C03 - Circuito Sumador Paralelo de 4-bit [ADDER4B] **En Desarrollo
El programa destella los leds conectados el PIC con frecuencia y ciclo de trabajo diferente, se hace uso del temporizador TMR0 para realizar las tareas de forma concurrente sin bloquear le ejecucion del programa principal. EL modulo TMR0 esta configurado para temporizar intervalos de 1ms. 
Adjunto el siguiente link que muestra como instalar gowin y cargar el bitstream a la FPGA<br />

### - C04 - Circuito Generador de Pulsos [CLOCKGEN] **En Desarrollo
El programa destella los leds conectados el PIC con frecuencia y ciclo de trabajo diferente, se hace uso del temporizador TMR0 para realizar las tareas de forma concurrente sin bloquear le ejecucion del programa principal. EL modulo TMR0 esta configurado para temporizar intervalos de 1ms. 
Adjunto el siguiente link que muestra como instalar gowin y cargar el bitstream a la FPGA<br />

### - C05 - Circuito Contador de Segundos [COUNTERSEG] **En Desarrollo
El programa destella los leds conectados el PIC con frecuencia y ciclo de trabajo diferente, se hace uso del temporizador TMR0 para realizar las tareas de forma concurrente sin bloquear le ejecucion del programa principal. EL modulo TMR0 esta configurado para temporizar intervalos de 1ms. 
Adjunto el siguiente link que muestra como instalar gowin y cargar el bitstream a la FPGA<br />

[Enlace](http://img.youtube.com/vi/w-GRu89glrg/0.jpg)](http://www.youtube.com/watch?v=w-GRu89glrg "Compilar en MPLABX")



Autor: Pablo Zarate, puedes contactarme a pablinza@me.com / pablinzte@gmail.com.  <br />
Visita mi Blog  [Blog de Contenidos](https://pablinza.blogspot.com/). <br />
Visita mi Canal [Blog de Contenidos](http://www.youtube.com/@pablozarate7524). <br />
Santa Cruz - Bolivia 
<br clear="left"/>
