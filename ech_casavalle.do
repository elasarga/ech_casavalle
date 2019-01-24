****** MEMORIA CASAVALLE ECH 2009-2017 ******


** Vamos a armonizar los criterios de las ECH 2009-17 tal como aparece en el instructivo
** Se trabaja para que, al final del proceso, la referencia sea el diccionario de la
** ECH 2017, con las correcciones/apuntes que se hagan acá. La referencia es siempre la
** base tal como está presentada para la ECH 2017.


** Empezamos por la ECH 2016

use "C:\Users\daniel.rodriguez\Documents\Casavalle\ECH Stata\ech 2016.dta", clear
      // Por mayor comodidad transferí los datos a Stata; para no confundir los tantos
	  // guardé las bases .dta en mi propia carpeta

** Variables que cambian de categoría	  
rename e202_7 e202_7_16	  
	  // Cambia la variable "Razones para no haber terminado educación media" (e202_7): 
	  // la opción única "No tenía interés / Le interesaba aprender otras cosas" (valor 2
	  // en la ECH 2016) se divide en la ECH 2017 en dos opciones, "No tenía interés" y
      // "Le interesaba aprender otras cosas" (valores 9 y 10 respectivamente)
rename f266 f266_16
rename f268 f268_16	  
	  // En la ECH 2017 se agrega en las variables "Reconocimiento de horas extra..." (f266) 
	  // y "Licencia por enfermedad o lesión paga" (f268) la opción "No sabe" (valores 5 y 3 
      // respectivamente)	  
	  
/* Variables nuevas y/o que cambian nombre y categoría
- Cambia la variable "Razones para no haber terminado educación media" (e202):
  la opción única "No tenía interés / Le interesaba aprender otras cosas" (e202_2 en la
  ECH 2016) se divide en la ECH 2017 en dos opciones "No tenía interés" (e202_9) y 
  "Le interesaba aprender otras cosas" (e202_10)
- Se agrega el bloque de preguntas sobre tabaquismo (e190-e192)
- Se agrega en las variables "Forma en que percibió los ingresos" (g250 y g251) la 
  opción "Tarjeta prepaga" (g250_5 y g251_5) */
   
save "C:\Users\daniel.rodriguez\Documents\Casavalle\ECH Stata\ech 2016.dta", replace
   
 

** Vamos ahora con la 2015.
 
use "C:\Users\daniel.rodriguez\Documents\Casavalle\ECH Stata\ech 2015.dta", clear 

** Variables que cambian de categoría
rename e202_7 e202_7_16	
rename f266 f266_16
rename f268 f268_16	
       // La ECH 2015 tiene el mismo formato que la ECH 2016 para las variables e202_7, f266
	   // y f268. Ver líneas 17 y ss.
rename e35 e35_15
       // La variable "Tipo de unión" (e35) a partir de la ECH 2016 se complejiza: se 
	   // distingue entre casamiento civil entre personas de distinto y del mismo sexo 
	   // (valores 4 y 5 respectivamente; originalmente valor 1), y también entre unión 
	   // concubinaria y unión de hecho. Las uniones concubinarias mantienen su valor, y las 
	   // de hecho toman valor 6 o 7 según se conformen con personas de distinto o del mismo 
	   // sexo.
rename e246 e246_15
       // A partir de la ECH 2016, en la variable "Tipo de canasta alimentaria recibida" 
	   // (e246) se agrega la opción Uruguay Crece Contigo (valor 12) 
rename f125 f125_15	  
       // La variable "tipo de pensión" (f125) incorpora, a partir de la ECH 2016, las 
	   // pensiones a víctimas de delitos violentos, hijos de fallecidos por violencia 
	   // doméstica y la Pensión Ley 18596 (valores 5, 6 y 7 respectivamente) 
rename d8_1 d8_1_15	   
       // Desde la ECH 2016 se agrega en la variable "Tenencia de la vivienda" (d8_1) la 
	   // categoría "Miembro de cooperativa de vivienda", que toma valor 10
   
/* Variables nuevas y/o que cambian nombre y categoría
- Cambia la variable "Elementos de confort". Se simplifican los rubros relacionados a
  decodificadores de TV (d21_7_1-3), y queda sólo el rubro "Conexión a TV para abonados"
  (d21_7) 
- La variable "Elementos de confort" (d21) incluye, desde 2016, los rubros referidos al Plan
  Ibirapitá (d21_15_5 y d21_15_6) y el acceso a TV digital abierta (d21_20)
- A partir de la ECH 2016 se eliminan las variables "Ingreso del servicio doméstico", 
  "Ingreso del jefe de hogar", "Ingreso del cónyuge" e "Ingreso de todos los miembros excepto
  jefe de hogar, servicio doméstico y cónyuge" (ht12 y ht15-17 respectivamente)
- Lo mismo ocurre con la variable "Cantidad de personas perceptoras de ingreso" (ht20) 
- Se agrega la consulta sobre uso de PC e internet en los últimos tres meses (e248 y e249; 
  anteriormente sólo se preguntaba sobre el uso el último mes)
- Se incorpora consulta sobre el uso de internet en la tablet del Plan Ibirapitá (e250) */

save "C:\Users\daniel.rodriguez\Documents\Casavalle\ECH Stata\ech 2015.dta", replace


** Turno de la 2014

use "C:\Users\daniel.rodriguez\Documents\Casavalle\ECH Stata\ech 2014.dta", clear 

** Variables que cambian de nombre
rename loc_agr_13 locagr
rename nom_loc_agr_13 nom_locagr
	   // Cambia el nombre de las variables de localidad agregada
rename e57_1 e559
rename e57_4_1 e559_1
rename e57_4_2 e559_2	   

** Variables que cambian de categoría
rename d8_1 d8_1_15 // ver línea 65	
rename e35 e35_15 // ver línea 51
rename e202_7 e202_7_16 // ver línea 17
rename e246 e246_15 // ver línea 48
rename f266 f266_16
rename f268 f268_16 // ver línea 47 y ss.

rename h167_1 h167_1_14
       // Con anterioridad a 2015, la variable "Ingresos por depósitos bancarios" sólo 
	   // tomaba dos valores (1: sí, 2: no). En adelante, se hace más específica (1: sí y
	   // genera intereses, 2: no, 3: sí y no genera intereses).
rename e191 e191_14
       // En la ECH 2014, como en la 2017, se incluye el bloque de preguntas sobre consumo
	   // de tabaco. En 2014, la dummy sobre dejar de fumar (e191) es distinta a 2017: 
	   // en vez de "En los últimos 12 meses le aconsejaron dejar de fumar" es "El médico le
	   // aconsejó dejar de fumar".
rename f92 f92_14 
       // A partir de la ECH  	   

/* Variables nuevas y/o que cambian nombre y categoría 
- A partir de 2015 se eliminan las variables relativas a percepción de ingresos por tarjeta
  alimentaria INDA/Mides (h157 y h157_1)  
- De 2014 (inclusive) para atrás no se incluye la variable e558 (número de persona) en la
  sección "Identificación del informante"
- A partir de 2015 se incorpora un espacio de descripción de la ascendencia de la persona si
  ésta no coincide con ninguna opción establecida (e29_5_1)  
- Lo mismo ocurre para la pregunta "¿Se atiende regularmente en este servicio de salud?"
  (e45_1_2, e45_5_1) y la variable dummy "Asistencia a otros servicios de salud" (e45_7)
- También para la variable "Razones por las que faltó al centro educativo" (e242_1, e245_1)
- Lo mismo para la variable "Medio de transporte utilizado para ir a trabajar" (f79_1)
- A partir de la ECH 2015 se incluye la pregunta "Lugar donde se atiende ante un problema 
  médico" (e237) en el caso de las personas que no tienen derechos vigentes en ninguna 
  institución médica
- De la ECH 2015 en adelante se incorpora la variable sobre becas a estudiantes de educación
  pública (e562)  
- A partir de la ECH 2015 cambian las variables del bloque de políticas sociales. Se
  eliminan las variables referidas a los tiques de INDA (e253-4) y se sustituyen por otras
  que refieren a tarjetas de beneficios (TUS Mides y TUS INDA, e560 y ss.). También se 
  incorpora una variable que indaga sobre la ayuda en especiee de leche en polvo (e561).

