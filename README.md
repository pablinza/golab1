# FPGA GOWIN LAB1 pablinza@me.com
Descripcion de circuitos digitales para FPGA
Carpeta con los proyectos generados por GOWIN EDA utilizando el chip GW1NR-LV9QN88PC6/I5 de la placa Tangnano9k.<br />
El software IDE esta disponible en la pagina del fabricante GOWIN [Enlace](https://www.gowinsemi.com/en/support/home/) <br />
La documentacion de la Tangnano9k puedes encontrarla en el sitio [Enlace](https://wiki.sipeed.com/hardware/en/tang/Tang-Nano-9K/Nano-9K.html) <br />
La descripcion de los circuitos se realizan en el lenguaje Verilog evintando en lo posible el uso de IP, a excepcion de implementaciones mas complejas.
Se utilizo la version linux GOWIN EDA V1.9.8.10 corriendo en la distro Debian 13 kernel 6.12.25-rt-amd64
Se utiliza openFPGALoacer para cargar el bitstream file.fs en la memoria FPGA [Enlace](https://github.com/trabucayre/openFPGALoader) <br />

##Lista de circuitos digitales implementados con tangnano9k
### - P01 - Destello de Luz Secuencial   [APPBASE]
 
El programa destella los leds conectados el PIC con frecuencia y ciclo de trabajo diferente, se hace uso del temporizador TMR0 para realizar las tareas de forma concurrente sin bloquear le ejecucion del programa principal. EL modulo TMR0 esta configurado para temporizar intervalos de 1ms. Para descripcion(https://youtu.be/rYyD9MK57Po)

Adjunto el siguiente link que muestra como instalar gowin y cargar el bitstream a la FPGA<br />
[Enlace](http://img.youtube.com/vi/w-GRu89glrg/0.jpg)](http://www.youtube.com/watch?v=w-GRu89glrg "Compilar en MPLABX")



Autor: Pablo Zarate, puedes contactarme a pablinza@me.com / pablinzte@gmail.com.  <br />
Visita mi Blog  [Blog de Contenidos](https://pablinza.blogspot.com/). <br />
Visita mi Canal [Blog de Contenidos](http://www.youtube.com/@pablozarate7524). <br />
Santa Cruz - Bolivia 
<br clear="left"/>
