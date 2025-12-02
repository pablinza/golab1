# FPGA GOWIN LAB1 pablinza@me.com
Descripcion de Circuitos Logicos Combinatorios __CLC__ y Secuencuales __CLS__ con HDL / __Verilog__ <br />
Carpeta con los proyectos generados por GOWIN EDA utilizando el chip GW1NR-LV9QN88PC6/I5 de la placa Tangnano9k.<br />
El software IDE esta disponible en la pagina del fabricante GOWIN [ --> Click](https://www.gowinsemi.com/en/support/home/) <br />
La documentacion de la Tangnano9k puedes encontrarla en el sitio [ --> Click](https://wiki.sipeed.com/hardware/en/tang/Tang-Nano-9K/Nano-9K.html) <br />
La descripcion de circuitos se realiza con Verilog evitando en lo posible el uso de codigo IP, a excepcion de implementaciones mas complejas.
Se utilizo la version linux GOWIN EDA V1.9.11.02 corriendo en la distro Debian 13, abajo dejo un video de como realizar la instalacion del software a utilizar <br />
Para cargar el bitstream del circuito en la memoria RAM/FPGA o EEPROM utilizare openFPGALoader por linea de comandos [ -->Click](https://github.com/trabucayre/openFPGALoader) <br />
## Instalacion del GOWIN EDA y Activacion de Licencia 
En el siguiente enlace [--> Click](https://www.youtube.com/watch?v=hmUjBX4lj0o) veras un video que muestra como se realiza la descarga e instalacion del software GOWIN EDA. 
Descripcion de la Placa Sipeed Tangnano9K para el montaje de circuitos en Laboratorio Sistemas Digitales
<p align="center">
  <img src="/images/tangnano9k.png"></img>
</p> <br />
El siguiente enlace (https://pcz1.blogspot.com/2025/06/introduccion-tarjeta-fpga-tangnano-9k.html) a mi blog brinda una descripcion resumida de esta tarjeta. Si realmente quieres entrar a fondo con el desarrollo de circuitos digitales te recomiendo que revisese los documentos del fabricante que son la mejor referencia de uso y resolucion de posibles errores (errdata). <br />
Cada carpeta del proyecto Gowin tiene el nombre precedido por el numero de actividad, en su estructura encontrara los modulos descriptivos Verilog con extension .v en la subcarpeta /src, mientras que el firmware .fs generado durante la sintesis se encuentra en la subcarpeta impl/pnr. <br />

## Lista de circuitos digitales implementados en TangNano9k
### - C01 - Multiplexor de 2 Canales con datos de 4-bit [MUX2S4B]
Este primer circuito muestra la implementacion de un multiplexor simple de dos canales para datos de 4-bit, la teoria y diseño de este circuito se describe mejor en el siguiente enlace a mi blog [ -->Click](https://pcz2.blogspot.com/2025/06/101-circuito-multiplexor.html). la descripcion del modulo Verilog se efectuara a nivel del comportamiento, para las pruebas de funcionamiento utilizaremos conmutadores (switches) a cada entrada y diodos led en las salidas. Puedes ver el video de la implementacion[ -->Click](https://youtu.be/6vYBxJZodCU)
<p align="center">
  <img src="/images/c01mux2s4bit.png"></img>
</p> <br />

### - C02 - Decodificador a 7-Segmentos [DECO7SEG]
En este ejemplo se muestra la implementacion de un circuito decodificador binario a 7-Segmentos, para las pruebas de funcionamiento utilizaremos como salida una pantalla de 7-segmentos tipo Anodo Comun y en la entrada cuatro pulsadores para conformar un numero de 4-bit. Opcionalmente se implementara una entrada de habilitacion para controlar en encendido y apagado de los segmentos. Puedes ver el video de la implementacion[ -->Click](https://youtu.be/ga8ZXKIZHBI)
<p align="center">
  <img src="/images/c02deco7seg.png"></img>
</p> <br />

### - C03 - Multiplexor + Decodificador Encapsulado [MUX2DECO7SEG]
Este ejemplo muestra en base a dos los circuitos previamente descritos como crear un modulo de nivel superior __top.v__ que contiene la instancia de los módulos __mux2s4b.v__, __deco7seg.v__ de nivel inferior y define las conexiones entre sus entradas y salidas, creando la estructura completa del circuito. Para ver el video de la implementacion[ -->Click](https://youtu.be/CfTUlFRT2o0)
<p align="center">
  <img src="/images/c03mux2deco7.png"></img>
</p> <br />

### - C04 - Sumador Paralelo de 4-bit con Decodificador BCD [ADDER4BIT]
En este ejemplo se implementa un circuito sumador aritmetico (A+B) de numeros binarios de 4-bit con salida visual de dos digitos decimales en pantallas de 7 segmentos, este ejercicio es un ejemplo mas de como integrar en un modulo __top.v__ de nivel superior las instancias correspondientes a los modulos sumador __adder.v__, decodificador bcd __decobcd.v__ y decodificador 7 segmentos __deco7seg.v__. Para ver el video de la implementacion[ -->Click](https://youtu.be/fT7mhHDEU84)
<p align="center">
  <img src="/images/c04adder4bit.png"></img>
</p> <br />

### - C05 - Oscilador y Temporizador [CLOCKGEN] **En Desarrollo
En este ejemplo veremos en primera instancia como generar dos señales de reloj (CKDIV) de baja frecuencia, la primera señal de reloj __fo1__ utilizara el Cristal de 27MHz conectado al pin 52(GCLKT3), la otra señal de reloj __fo2__ usara el oscilador interno (onchip) de 250MHz que activaremos con la primitiva OSC o generador IP Core. Adicionalmente a la salida de cada senal de reloj se adicionaran divisores con salidas __so1__ y __so2__ para destellara luces leds a 1Hz y 4Hz respectivamente.   
<p align="center">
  <img src="/images/c05clockgen.png"></img>
</p> <br />

### - C06 - Maquina de Estados Finitos para uso de Encoder y Pantalla [ENC7SEG] **En Desarrollo 
Este ejemplo muestra como describir una maquina de estados finitos __MEF1__ para llevar a cabo la lectura de un Encoder Rotativo (KY-040) con la que sera posible ajustar un numero entero de cuatro digitos. Otra maquina de estados finitos __MEF2__ controlara una Pantalla HC57xx que agrupa 4 digitos de 7-Segmentos para utilizar la tecnica de multiplexacion por division de tiempo TDM. Entonces desde el Encoder KY-040 se podra ajustar cada digito del numero que muestra la Pantalla HC57xx. Los diferentes modulos del circuito se integran en un modulo __top.v__ de nivel superior br />
### - C07 - Medicion de Distancia por Ultrasonido [HCDIST] **En Desarrollo
El ejemplo muestra como implementar la multiplexacion por division de tiempo aplicado al control de cuatro pantallas de siete segmentos del modulo HC57xx, se tomara como base el modulo para lectura de un codificador rotativo KY-040 con la que sera posible incrementar y decrementar la magnitud que se muestra en la pantalla. Los diferentes modulos del circuito se integran en un modulo __top.v__ de nivel superior <br />
### - C08 - Captura de Datos Analogicos [ADCSENSE] **En Desarrollo
En este ejemplo, con el fin de medir senales analogicas, se describe un driver para el convertidor ADC INxxxx de cuatro canales. El circuito medira la senal analogica de un canal analogico y mostrara su valor sin procesar en una pantalla o salida de datos serial (IPCore). <br />
### - C09 - Modulacion de Ancho de Pulso [PWMSERVO] **En Desarrollo
Aplicado al control de tres servomotores, dos se controlan con un joystick Eje X y Eje Y y uno mediante codificadores rotativos top.v <br />
### - C10 - Salida de Datos por Video HMDI  [HDMIP1]
Aplicado al uso de la interface HDMI (IPcore) de la placa tangnano 9K, se muestra como enviar datos <br />
Autor: Pablo Zarate, puedes contactarme a pablinza@me.com / pablinzte@gmail.com.  <br />
Visita mi Blog  [Blog de Contenidos](https://pablinza.blogspot.com/). <br />
Visita mi Canal [Blog de Contenidos](http://www.youtube.com/@pablozarate7524). <br />
Santa Cruz - Bolivia 
<br clear="left"/>
