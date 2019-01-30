****** MEMORIA CASAVALLE ECH 2009-2017 ******


** Vamos a armonizar los criterios de las ECH 2009-17 tal como aparece en el instructivo
** Se trabaja para que, al final del proceso, la referencia sea el diccionario de la
** ECH 2017, con las correcciones/apuntes que se hagan acá. La referencia es siempre la
** base tal como está presentada para la ECH 2017.

use "\\Kronos\evaluacion\Evaluación CASAVALLE\PROCESAMIENTO ECH_Z CASAVALLE\ECH Stata\ech 2017.dta", clear
rename ccz ccz10
save "\\Kronos\evaluacion\Evaluación CASAVALLE\PROCESAMIENTO ECH_Z CASAVALLE\ECH Stata\ech 2017v2.dta", replace
      // Antes de arrancar en si con la armonización, corregimos una variable de la ECH 2017.
      // En 2011 se redefinen los límites de CCZ de Montevideo. En la base de datos tenemos 
      // CCZ marco 2011 (ccz10) y CCZ marco 2004 (renombraremos la variable más adelante).

// Ahora sí, empezamos por la ECH 2016 //

use "\\Kronos\evaluacion\Evaluación CASAVALLE\PROCESAMIENTO ECH_Z CASAVALLE\ECH Stata\ech 2016.dta", clear
      // Por mayor comodidad transferí los datos a Stata; para no confundir los tantos
      // guardé las bases .dta en mi propia carpeta
      
** Variables que cambian de nombre
rename ccz ccz10
      // Mantenemos el mismo criterio que aparece en las líneas 9 y ss.

** Variables que cambian de categoría	  
rename e202_7 e202_7_11	  
      // Cambia la variable "Razones para no haber terminado educación media" (e202_7): 
      // la opción única "No tenía interés / Le interesaba aprender otras cosas" (valor 2
      // en la ECH 2016) se divide en la ECH 2017 en dos opciones, "No tenía interés" y
      // "Le interesaba aprender otras cosas" (valores 9 y 10 respectivamente)
rename f266 f266_14
rename f268 f268_14	  
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
   
save "\\Kronos\evaluacion\Evaluación CASAVALLE\PROCESAMIENTO ECH_Z CASAVALLE\ECH Stata\ech 2016v2.dta", replace
   
 
// Vamos ahora con la 2015 //
 
use "\\Kronos\evaluacion\Evaluación CASAVALLE\PROCESAMIENTO ECH_Z CASAVALLE\ECH Stata\ech 2015.dta", clear 

** Variables que cambian de nombre
rename ccz ccz10 // variable ya renombrada anteriormente

** Variables que cambian de categoría
rename e202_7 e202_7_11	
rename f266 f266_14
rename f268 f268_14	
       // Variables ya renombradas anteriormente. La ECH 2015 tiene el mismo formato que la ECH 
       // 2016 para las variables e202_7, f266 y f268. Ver líneas 27 y ss.
       
rename e35 e35_12
       // La variable "Tipo de unión" (e35) a partir de la ECH 2016 se complejiza: se 
       // distingue entre casamiento civil entre personas de distinto y del mismo sexo 
       // (valores 4 y 5 respectivamente; originalmente valor 1), y también entre unión 
       // concubinaria y unión de hecho. Las uniones concubinarias mantienen su valor, y las 
       // de hecho toman valor 6 o 7 según se conformen con personas de distinto o del mismo 
       // sexo.
rename e246 e246_13
       // A partir de la ECH 2016, en la variable "Tipo de canasta alimentaria recibida" 
       // (e246) se agrega la opción Uruguay Crece Contigo (valor 12) 
rename f125 f125_09	  
       // La variable "tipo de pensión" (f125) incorpora, a partir de la ECH 2016, las 
       // pensiones a víctimas de delitos violentos, hijos de fallecidos por violencia 
       // doméstica y la Pensión Ley 18596 (valores 5, 6 y 7 respectivamente) 
rename d8_1 d8_1_09	   
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
- Se agrega la consulta sobre uso de PC e internet en los últimos tres meses (e248
  y e249; anteriormente sólo se preguntaba sobre el uso el último mes)
- Se incorpora consulta sobre el uso de internet en la tablet del Plan Ibirapitá (e250) */

save "\\Kronos\evaluacion\Evaluación CASAVALLE\PROCESAMIENTO ECH_Z CASAVALLE\ECH Stata\ech 2015.dtav2", replace


// Turno de la 2014 //

use "\\Kronos\evaluacion\Evaluación CASAVALLE\PROCESAMIENTO ECH_Z CASAVALLE\ECH Stata\ech 2014.dta", clear 

** Variables que cambian de nombre
rename ccz ccz10 // variable ya renombrada anteriormente

rename loc_agr_13 locagr
rename nom_loc_agr_13 nom_locagr
       // Cambia el nombre de las variables de localidad agregada
rename e57_1 e559
rename e57_4_1 e559_1
rename e57_4_2 e559_2	   
       // Cambia el nombre de las variables "Concurrencia a comedor" y "Cantidad de
       // comidas recibidas en comedor"

** Variables que cambian de categoría
rename d8_1 d8_1_09 	
rename e35 e35_12 
rename e202_7 e202_7_11 
rename e246 e246_13 
rename f266 f266_14
rename f268 f268_14 
rename f125 f125_09 // variables ya renombradas anteriormente

rename e248 e248_12
rename e249 e249_12
       // En las ECH 2012-2014 aparecen las variables "Otra canasta" y "Cantidad de otra
       // canasta por mes" para casos no comprendidos en e246. Respectivamente se codifican con
       // los nombres e248 y e249, que en 2016-7 se utilizan para otras variables. Por tanto,
       // se recodifica ambas variables como si fuera una variable que cambia de categoría.
rename h167_1 h167_1_14
       // En la ECH 2014, la variable "Ingresos por depósitos bancarios" sólo 
       // tomaba dos valores (1: sí, 2: no). En adelante, se hace más específica (1: sí y
       // genera intereses, 2: no, 3: sí y no genera intereses).
rename e191 e191_11
       // En las ECH 2011, 2014 y 2017 se incluye un bloque de preguntas sobre consumo
       // de tabaco. Hasta 2014, la dummy sobre dejar de fumar (e191) es distinta a 2017: 
       // en vez de "En los últimos 12 meses le aconsejaron dejar de fumar" es "El médico le
       // aconsejó dejar de fumar".
rename f92 f92_09 
       // A partir de la ECH 2015 se incorpora la opción "Trabajador de un programa social de 
       // empleo" (valor 8) a la variable "Categoría de la ocupación" en el caso de trabajo
       // secundario
rename g132 g132_09
rename g140 g140_09
       // La ECH 2015 agrega la categoría "No corresponde" (valor 3) a la variable "Derecho a
       // pastoreo" (g132 y g140)
replace g150=3 if g150==2
       // Entre 2015 y 2017 la respuesta "No" en la variable "Cobra AFAM" (g150) se codifica con 
       // el valor 3

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
- De la ECH 2015 en adelante se incorpora la variable sobre becas a estudiantes de educación
  pública (e562)  
- A partir de la ECH 2015 cambian las variables del bloque de políticas sociales. Se
  eliminan las variables referidas a los tiques de INDA (e253-4) y se sustituyen por otras
  que refieren a tarjetas de beneficios (TUS Mides y TUS INDA, e560 y ss). También se 
  incorpora una variable que indaga sobre la ayuda en especiee de leche en polvo (e561).
- Previo a la ECH 2015 no se pregunta explícitamente si se recibió ingresos por pensiones
  al preguntar el monto recibido por ellas (hasta 2014 inclusive la dummy g_it_2 no existe)
- Tras la ECH 2014 desaparecen las siguientes variables relativas al ingreso personal: "Ingreso
  del trabajador dependiente por ocupación principal" (ytdop), "Ingreso del trabajador
  dependiente por otras ocupaciones" (ytdos), "Ingreso del trabajador independiente" (ytinde), e
  "Ingreso por transferencias" (ytransf).
- Hasta la ECH 2014 se incluye la variable "Valor canasta de INDA pensionistas" (indapensi) */

save "\\Kronos\evaluacion\Evaluación CASAVALLE\PROCESAMIENTO ECH_Z CASAVALLE\ECH Stata\ech 2014.dtav2", replace


// Sigue la 2013 //

use "\\Kronos\evaluacion\Evaluación CASAVALLE\PROCESAMIENTO ECH_Z CASAVALLE\ECH Stata\ech 2013.dta", clear 

** Variables que cambian de nombre
rename ccz ccz10 
rename loc_agr_13 locagr
rename nom_loc_agr_13 nom_locagr 
rename e57_1 e559
rename e57_4_1 e559_1
rename e57_4_2 e559_2 // variables ya renombradas anteriormente

rename e233 e557 
       // Cambia el nombre de la variable "Identificación del informante"

** Variables que cambian de categoría
rename d8_1 d8_1_09 
rename e35 e35_12 
rename e202_7 e202_7_11 
rename e246 e246_13 
rename e248 e248_12
rename e249 e249_12 
rename f92 f92_09 
rename f125 f125_09 
rename g132 g132_09
rename g140 g140_09
replace g150=3 if g150==2 // variables ya renombradas/redefinidas anteriormente

/* Variables nuevas y/o que cambian nombre y categoría 
- A partir de 2014 se incorpora la variable "Fuente de energía para calefaccionar" (d260)
- En la sección "Elementos de confort", se agregan desde 2014 variables para especificar el 
  número de equipos de AC, autos y ciclomotores (d21_14_1, d21_18_1 y d21_19_1, respectivamente)
- Desde 2014 aparece una variable que recoge los ingresos percibidos por alquiler de maquinaria
  y vehículos (h269 y h269_1) y marcas y patentes (h271 y h271_1)
- Con anterioridad a 2014, los ingresos por intereses (de cualquier tipo) se concentraban en las
  variables "Recibió intereses" (h167) y "Ingreso por intereses" (h168_1 y h168_2). En adelante
  ocurre lo descrito en líneas 108 y ss. NOTA: no es necesario cambiar el nombre de estas
  variables en el presente caso porque los nombre h167, h168_1 y h168_2 no se utilizan en
  ninguna variable de ECHs posteriores.
- A partir de 2014 se incluye la variable "De lo que produce parte se destina a la venta" (f261)
- También desde la ECH 2014 se incorpora el bloque de variables sobre tributación en el caso
  de trabajadores independientes (f262-5), así como las variables "Reconocimiento de horas 
  extra", "Vacaciones anuales pagas" y "Licencia por enfermedad" (f266-8)*/
 
save "\\Kronos\evaluacion\Evaluación CASAVALLE\PROCESAMIENTO ECH_Z CASAVALLE\ECH Stata\ech 2014.dtav2", replace


// Ahora pasamos a la 2012 //

use "\\Kronos\evaluacion\Evaluación CASAVALLE\PROCESAMIENTO ECH_Z CASAVALLE\ECH Stata\ech 2012.dta", clear 

** Variables que cambian de nombre
rename loc_agr_13 locagr
rename nom_loc_agr_13 nom_locagr 
rename e233 e557 
rename e57_1 e559
rename e57_4_1 e559_1
rename e57_4_2 e559_2 // variables ya renombradas anteriormente

rename codbarrio barrio
rename nombrebarr nombarrio
       // Cambian las variables código y nombre de barrio para Montevideo
rename estratogeo estred13  
       // Cambia la variable "Estrato"
       
** Variables que cambian de categoría
rename d8_1 d8_1_09 
rename e35 e35_12 
rename e202_7 e202_7_11
rename e248 e248_12
rename e249 e249_12 
rename f92 f92_09
rename f125 f125_09 
rename g132 g132_09
rename g140 g140_09 // variables ya renombradas anteriormente

rename c4 c4_09
       // De 2013 en adelante la variable "Material predominante en pisos" integra los pisos de
       // baldosa (originalmente valor 2) con los de cerámica, parqué, moqueta y linóleo (valor 1)
rename e45_1_1 e45_1_1_11
       // A partir de 2013 se amplían las categorías de la variable "Derechos vigentes de salud -
       // MSP/ASSE" (e45_1_1), agregándose las opciones de pago fuera de Fonasa (opciones 5 y 6) 
rename e246 e246_12
       // De 2013 en adelante se elimina la categoría "Pensionistas" de las opciones de canasta en
       // la variable e246
rename g150 g150_11
       // En la ECH 2013 y las posteriores la pregunta sobre el cobro y la forma de cobro de AFAM
       // aparecen por separado (g150 pregunta si el entrevistado cobra AFAM y g256 si lo cobra con
       // el sueldo). En las ECH 2011-12, la forma de cobro aparece incluida en la respuesta a g150
       // (valor 1: recibe incluida en el sueldo, 2: recibe por fuera, 3: no recibe). Tampoco se 
       // diferencia entre AFAM tradicionales y AFAM-Plan de Equidad (de 2012 para atrás no aparece
       // la variable g255)

/* Variables nuevas y/o que cambian nombre y categoría 
- Hasta 2012 inclusive junto con el mes de la encuesta se relevaba también el trimestre (trimestre)
- Por otro lado, hasta 2012 inclusive el único expansor que confeccionaba la ECH era el 
  expansor de año (pesoano). En adelante se agregan expansores de semestre, trimestre y mes 
  (pesosem, pesotri, pesomen)
- A partir de la ECH 2013 se incorpora la preguta explícita sobre si se realizan contribuciones a
  otros hogares (i259). Anteriormente sólo se preguntaba de forma directa por qué monto se habían
  hecho tales contribuciones.
- Desde la ECH 2013 se incorpora una variable que identifica a la persona miembro del hogar que
  se atiende en ASSE/MSP (e45_1_1_1)
- También se agrega una variable "Descripción" para el caso de pacientes que ejercen su derecho
  a la salud mediante mutualista pero en la práctica no se atienden allí por razones que no son
  las especificadas en el cuestionario (e45_2_2_1)
- A partir de 2013 se incorporan al bloque de políticas sociales las variables referidas a tiques
  de INDA (e253 y e254)
- De 2013 en adelante aparece la categoría "Prenatales" (g151_5) en la variable "Cantidad de AFAM 
  percibidas". También aparece un espacio para especificar cuántos menores cobran complemento liceal
  (g151_3_1)
- Desde 2013 se contabiliza la devolución de Fonasa como "Otros ingresos" (g258 y g258_1)
- En la ECH es la última vez en que aparece, entre los valores de canasta de INDA, la variable "Valor
  de otra canasta" (otrcanast)*/
 
 save "\\Kronos\evaluacion\Evaluación CASAVALLE\PROCESAMIENTO ECH_Z CASAVALLE\ECH Stata\ech 2012.dtav2", replace
 
 
//*ECH 2011//

use "C:\Users\evelin.lasarga\Documents\Casavalle\ECH Stata\ech 2011.dta", clear

***PERSONAS***

***variables que cambian de nombre

rename ccz ccz04

rename estratogeo09 estred13

*la variable e247 -cantidad de canastas mensuales- en 2010 se pregunta según cada canasta, 
///por lo que se deben sumar las cantidades de cada canasta recibida para obtener la misma variable en 2017
g e247=e59_2_1+e59_3_1+e59_4_1+e59_5_1+e59_6_1+e59_7_1+e59_8_1+e59_9_1+e59_10_1+e59_11_1+e59_12_1+e59_13_1


*cantidad de comidas recibidas semanalmente (desayunos y meriendas) 
rename e57_4_1 e559_1

*cantidad de comidas recibidas semanalmente (almuerzos y cenas)
rename e57_4_2 e559_2

*la variable f90_2 (tareas que realiza en el trabajo secundario) tiene código CIUO rev. 88 y la variable F90_CIUO_08_4 tiene código 08,
///igual que la f90_2 de 2017
rename f90_2 f90_2_11
rename f90_ciuo_08_4 f90_2

*la variable f76_2 (tareas que realiza en el trabajo principal) tiene código CIIU rev. 3 y la variable F76_CIIU4_4 tiene código rev.4,
///igual que la f76_2 de 2017
rename f76_2 f76_2_11
rename f76_ciiu4_4 f76_2

*la variable f71_2 (tareas que proporcionan mayores ingresos) tiene código 88 y la variable F71_CIUO_08_4 tiene código 08,
///igual que la f71_2 de 2017
rename f71_2 f71_2_11
rename f71_ciuo_08_4 f71_2

*la variable f72_2 (a qué se dedica el establecimiento del trabajo principal) tiene código CIIU 3 y la variable F72_CIIU4_4 tiene código 4,
///igual que la f72_2 de 2017
rename f72_2 f72_2_11
rename f72_ciiu4_4 f72_2

*la variable f119_2 (tareas que realizaba en trabajo anterior de no ocupados) tiene código 88 y la variable F119_CIUO_08_4 tiene código 08,
///igual que la f119_2 de 2017
rename f119_2 f119_2_11
rename f119_ciuo_08_4 f119_2

*la variable f91_2 (a qué se dedica el establecimiento del trabajo secundario) tiene códico CIIU rev. 3 y la variable F76_CIIU4_4 tiene códico rev.4,
///igual que la f91_2 de 2017
rename f91_2 f91_2_11
rename f91_ciiu4_4 f91_2

*la variable f120_2 (a qué se dedicaba el establecimiento del trabajo anterior de no ocupados) tiene códico CIIU rev. 3 y la variable F120_CIIU4_4 tiene códico rev.4,
///igual que la f120_2 de 2017
rename f120_2 f120_2_11
rename f120_ciiu4_4 f120_2

***variables que cambian de categoría

*///la variable f92 (categoría ocupación trabajo secundario) tiene menos categorías que en 2017 (falta #8, trabajador de un programa social de empleo)
rename f92 f92_11

*///la variable f97 (caja que aporta por trabajo secundario) tiene menos categorías que en 2017 (falta #8, exterior)
rename f97 f97_11

*///nom_locagr no tiene Capilla del Sauce y tiene tacuarembo (sin tilde) además de tacuarembó
replace nom_locagr="tacuarembó" if nom_locagr=="tacuarembo"

*///segm varía algunas categorías
rename segm segm_09

*///tipo de unión tiene menos categorías, (casamiento y unión libre vs. según sexo y según tipo de unión)
rename e35 e35_09

*///derechos vigentes MSP tiene menos categorías que en 2017 pero más que en 2009 y 2010
///no tiene #5 y #6, A través de un miembro de este hogar (sin ser Fonasa) y otro que no es miembro del hogar (sin ser Fonasa) respectivamente
///antes solo consideraba #1 y #2, por fonasa y por bajos recursos
rename e45_1_1 e45_1_1_11

*///se atiende regularmente aparece en 2011 pero tiene menos categorías que en 2017
///no tiene #5 (no ha necesitado atenderse)
rename e45_1_2 e_45_1_2_11

*///derechos vigentes IAMC tiene menos categorias que 2017 y más que 2009 y 2010
///incluye #4 (A través de una Caja de auxilios)
rename e45_2_1 e45_2_1_11

*///aparece en 2011 pero tiene menos categorías que en 2017
///no incluye #6 (no ha necesitado atenderse)
rename e45_2_2 e45_2_2_11

*///derechos vigentes seguro privado médico tiene más categorías que en 2017 y más que en 2009
///incluye #4 (A través de una Caja de auxilios)
rename e45_3_1 e45_3_1_11

*///se atiende regularmente seguro privado tiene menos opciones que en 2017 y más que en 2009
///no incluye #6 (no ha necesitado atenderse)
rename e45_3_2 e45_3_2_11

*///se atiende regularmente hospital policial/militar aparece en 2011 pero tiene menos categorías que en 2017
///no incluye #6 (no ha necesitado atenderse)
rename e45_4_3 e45_4_3_11

*///se atiende regularmente BPS aparece en 2011 pero tiene menos categorías que en 2017
///no incluye #6 (no ha necesitado atenderse)
rename e45_5_1 e45_5_1_11

*///razones por no haber finalizado educación media aparece en 2011, pero con menos categorias que en 2017
///no diferencia entre no tenía interés y le interesaba aprender otras cosas (difiere de diccionario)
rename e202_7 e202_7_11
*compatibilizar

*///curso carrera que estudió (bachillerato teconológico) aparece en 2011, pero con menos categorías que en 2017, distinta codificación
rename e209_1 e209_1_11

*///curso carrera que estudió (educación técnica) aparece en 2011, pero con menos categorías que en 2017, distinta codificación
rename e214_1 e214_1_11

*///curso carrera que estudió (magisterio o profesorado) aparece en 2011, pero con menos categorías que en 2017, distinta codificación
rename e217_1 e217_1_11

*///curso carrera que estudió (universidad o similar) aparece en 2011, pero con menos categorías que en 2017, distinta codificación
rename e220_1 e220_1_11

*///curso carrera que estudió (terciario no universitario) aparece en 2011, pero con menos categorías que en 2017, distinta codificación
rename e223_1 e223_1_11

*///curso carrera que estudió (posgrado) aparece en 2011, pero con menos categorías que en 2017, distinta codificación
rename e226_1 e226_1_11

*//f83 (caja a la que aporta por trabajo principal) tiene menos categorías que en 2017
rename f83 f83_09

*//recibe asignación familiar tiene más categorías que en 2017 (compatibilizar, categoría "si" se divide en dos)
rename g150 g150_11


***variables que cambian nombre y categoría

/////

***variables que están solo en 2011

*//trimestre
*//e28
*//e41
*//e42_2
*//e58
*//e58_1
*//e195
*//e202_2
*//F71_CIUO_08_4
*//YTDOP
*//YTDOS
*//YTINDE
*//YTRANSF
*//indapensi
*//otrcanast

***variables que están solo en 2017

*//e557
*//e558
*//e234_2
*//e235_2
*//e236
*//e236_2
*//e236_4
*//e45_1_1_1
*//e248
*//e249
*//e250
*//e559
*//e559_1
*//e559_2
*//e560
*//e560_1
*//e560_1_1
*//e560_2
*//e560_2_1
*//e561
*//e561_1
*//e246
*//e246_1
*//e237
*//e238
*//e239
*//e240_1
*//e240_2
*//e241
*//e242
*//e242_1
*//e243_1
*//e243_2
*//e244
*//e245
*//e245_1
*//e202_9
*//e202_10
*//e202_8
*//e202_6_1
*//e562
*//f261
*//f262
*//f263
*//f264
*//f264_1
*//f265
*//f265_1
*//f79_1
*//f266
*//f267
*//f268
*//g250_1
*//g250_2
*//g250_5
*//g250_3
*//g250_4
*//g251_1
*//g251_2
*//g251_5
*//g251_3
*//g251_4
*//g148_1_12
*//g_it_2
*//g148_2_12
*//g255
*//g256
*//g151_3_1
*//g151_5
*//g257
*//g258
*//g258_1


***HOGARES***

***variables que cambian de nombre

/////

***variables que cambian de categoria

*//c4 (material predominante en pisos) tiene más categorías que en 2017
///incluye #2 (baldosas calcáreas)
rename c4 c4_09

*//d8_1 (tenencia de la vivienda) tiene menos categorías que en 2017
//no incluye #10, miembro de cooperativa de vivienda
rename d8_1 d8_1_09

***variables que cambian nombre y categoría

/////

***variables que están solo en 2011

*//d176_1
*//d176_2
*//d176_3
*//d8_1_1
*//d8_1_2
*//d17
*//d22
*//h157
*//h157_1
*//h168_1
*//h168_2
*//h167 ----------->compatibilizar
*//h157
*//h157_1
*//d21_7_1
*//d21_7_2
*//d21_7_3
*//d177
*//d178
*//d179
*//d179_1
*//d180

***variables que están solo en 2017

*//YHOG
*//d260
*//d21_4_1
*//d21_5_1
*//d21_20
*//d21_14_1
*//d21_15_3
*//d21_15_4
*//d21_15_5
*//d21_15_6
*//d21_16_1
*//d21_16_2
*//d21_16_3
*//d21_18_1
*//d21_19_1
*//d181
*//d229
*//d230
*//d231
*//d232
*//d184
*//d184_1
*//h252
*//h252_1
*//h227
*//h269
*//h269_1
*//h167_1
*//h167_1_1
*//h167_1_2
*//h167_2
*//h167_2_1
*//h167_2_2
*//h167_3
*//h167_3_1
*//h167_3_2
*//h167_4
*//h167_4_1
*//h167_4_2
*//h271
*//h271_1
*//i228
*//i259
*//h269
*//h269_1
*//h167_1
*//h167_1_1
*//h167_1_2
*//h167_2
*//h167_2_1
*//h167_2_2
*//h167_3
*//h167_3_1
*//h167_3_2
*//h167_4
*//h167_4_1
*//h167_4_2
*//h252_1
*//d229
*//d230
*//d231
*//d232
*//d21_19_1
*//d21_18_1
*//d21_15_5
*//d21_14_1

//*ECH 2010//

use "C:\Users\evelin.lasarga\Documents\Casavalle\ECH Stata\ech 2010.dta", clear

***PERSONAS***

***variables que cambian de nombre
rename ccz ccz04

rename estratogeo09 estred13

*en 2010 la variable asistió alguna vez a un centro de enseñanza coincide con la e49 de la 2017, pero dado que ya existe una e49 en la 2010, 
///es necesario renombrarla
rename e49 e49_09
rename e50 e49

*concurrencia a comedor (últimos 30 días, confirmar para 2017)
rename e57_1 e559

*la variable e247 -cantidad de canastas mensuales- en 2010 se pregunta según cada canasta, 
///por lo que se deben sumar las cantidades de cada canasta recibida para obtener la misma variable en 2017
g e247=e59_1_1+e59_2_1+e59_3_1+e59_4_1+e59_5_1+e59_6_1+e59_7_1+e59_8_1+e59_9_1+e59_10_1+e59_11_1+e59_12_1+e59_13_1

***variables que cambian de categoria

*//nom_locagr no tiene Capilla del Sauce y tiene tacuarembo (sin tilde) además de tacuarembó
replace nom_locagr="tacuarembó" if nom_locagr=="tacuarembo"

*//categorías solo para Montevideo
rename secc secc_09

*//menos categorías que en 2017
rename locagr locagr_09

*//menos categorías que en 2017
rename nom_locagr nom_locagr_09

*//segm varía algunas categorías
rename segm segm_09

*//barrio varía algunas categorías
rename barrio barrio_09

*//nombarrio varía algunas categorías
rename nombarrio nombarrio_09

*//tipo de unión tiene menos categorías
rename e35 e35_09

*//estado civil no diferencia entre viudo de casamiento y viudo de unión libre (#6 en 2017)
rename e36 e36_09

*//e45_1_1 tiene menos categorías que en 2017
rename e45_1_1 e45_1_1_09

*//e45_2_1 tiene menos categorías que en 2017
rename e45_2_1 e45_2_1_09

*//e45_3_1 tiene menos categorías que en 2017
rename e45_3_1 e45_3_1_09

*//e47 (quién paga la cuota de la emergencia móvil) tiene menos categorías que en 2017
///no incluye #4 (Paga el empleador de un miembro del hogar)
rename e47 e47_09

*//f83 tiene menos categorías que en 2017
rename f83 f83_09

*//f92 tiene menos categorías que en 2017
rename f92 f92_09

*//f97 tiene menos categorías que en 2017
rename f97 f97_09

*//f125 (tipo de pensión que recibe) tiene menos categorías que en 2017
///no incluye #5, #6 y #7 (víctimas de delitos violentos, hijos de fallecidos por violencia doméstica,  Especial Reparadora (Ley N° 18.596))
rename f125 f125_09

*//g150 tiene categorías 1 y 2 mientras que en 2017 son 1 y 3
replace g150=3 if g150==2

***variables que están solo en 2010

*//trimestre
*//e28
*//e40
*//e41
*//e42_2
*//e43_1
*//e43_2
*//e43_3
*//e43_4
*//e43_5
*//e44_1
*//e44_2
*//e44_3
*//e44_4
*//e44_5
*la variable e50 es la e49 en 2017. e49 -asistencia actual a un centro de enseñananza- no está presente en 2017, 
///y se renombra como e49_09, en tanto la e50 como e49 (sección variables que cambian de nombre)
*//e59_1
*//e59_1_1
*//e59_2
*//e59_2_1
*//e59_3
*//e59_3_1
*//e59_4
*//e59_4_1
*//e59_5
*//e59_5_1
*//e59_6
*//e59_6_1
*//e59_7
*//e59_7_1
*//e59_8
*//e59_8_1
*//e59_9
*//e59_9_1
*//e59_10
*//e59_10_1
*//e59_11
*//e59_11_1
*//e59_12
*//e59_12_1
*//e59_13
*//e59_13_1
*//e51_1
*//e57_2_1
*//e57_2_2
*//e57_2_3
*//e57_2_4
*//e57_2_5
*//e57_2_6
*//e57_2_7
*//e57_3_1
*//e57_3_2
*//e57_3_3
*//e57_3_4
*//e58
*//e58_1
*//g150_1
*//indacomun
*//indapensi
*//otrcanast
*//YTDOP
*//YTDOS
*//YTINDE
*//YTRANSF

***variables que están solo en 2017

*//e557
*//e558
*//e185
*//e186_1
*//e186_2
*//e186_3
*//e186_4
*//e234_2
*//e235_2
*//e236
*//e236_2
*//e236_4
*//e45_1_2
*//e45_1_2_1
*//e45_2_1_1
*//e45_2_2
*//e45_2_2_1
*//e45_3_1_1
*//e45_3_2
*//e45_3_2_1
*//e45_4_3
*//e45_4_3_1
*//e45_5_1
*//e45_5_1_1
*//e45_7_1
*//e237
*//e47_1
*//e190
*//e190_1
*//e190_1_1
*//e190_2
*//e190_2_1
*//e190_3
*//e190_3_1
*//e191
*//e192
*//e238
*//e239
*//e240_1
*//e240_2
*//e241
*//e242
*//e242_1
*//e193
*//e194
*//e243_1
*//e243_2
*//e244
*//e245
*//e245_1
*//e196
*//e196_1
*//e196_2
*//e196_3
*//e197
*//e197_1
*//e198
*//e199
*//e200
*//e200_1
*//e200_2
*//e200_3
*//e201
*//e201_1
*//e202_1
*//e202_9
*//e202_10
*//e202_3
*//e202_4
*//e202_8
*//e202_5
*//e202_6
*//e202_6_1
*//e202_7
*//e210_1
*//e210_2
*//e209_1
*//e210_3
*//e211
*//e211_1
*//e211_2
*//e211_3
*//e562
*//e212
*//e212_1
*//e213
*//e212
*//e212_1
*//e213
*//e214_1
*//e215
*//e215_1
*//e216
*//e217_1
*//e218
*//e218_1
*//e219
*//e220_1
*//e221
*//e221_1
*//e222
*//e223_1
*//e224
*//e224_1
*//e225
*//e226_1
*//e559
*//e559_1
*//e559_2
*//e560
*//e560_1
*//e560_1_1
*//e560_2
*//e560_2_1
*//e561
*//e561_1
*//e246
*//e246_1
*//e247 (se crea para 2010, sección variables que cambian de nombre)
*//e248
*//e62
*//e249
*//e250
*//f261
*//f262
*//f263
*//f264
*//f264_1
*//f265
*//f265_1
*//f79_1
*//f266
*//f267
*//f268
*//g250_1
*//g250_2
*//g250_5
*//g250_3
*//g250_4
*//g251_1
*//g251_2
*//g251_5
*//g251_3
*//g251_4
*//g_it_2
*//g255
*//g256
*//g151_5
*//g151_1
*//g151_2
*//g151_3
*//g151_3_1
*//g151_4
*//g257
*//g153
*//g153_1
*//g153_2
*//g258
*//g258_1

***HOGARES***

***variables que cambian de nombre

rename yhog YHOG

***variables que cambian de categoria

*//c4 tiene más categorías que en 2017
rename c4 c4_09

*//d8_1 tiene menos categorías que en 2017
rename d8_1 d8_1_09

***variables que cambian nombre y categoría

/////

***variables que están solo en 2010

*//d17
*//d22
*//h157
*//h157_1

***variables que están solo en 2017

*//d260
*//d21_4_1
*//d21_5_1
*//d21_20
*//d21_14_1
*//d21_15_3
*//d21_15_4
*//d21_15_5
*//d21_15_6
*//d21_16_1
*//d21_16_2
*//d21_16_3
*//d21_18_1
*//d21_19_1
*//d181
*//d229
*//d230
*//d231
*//d232
*//d184
*//d184_1
*//h252
*//h252_1
*//h227
*//h269
*//h269_1
*//h167_1
*//h167_1_1
*//h167_1_2
*//h167_2
*//h167_2_1
*//h167_2_2
*//h167_3
*//h167_3_1
*//h167_3_2
*//h167_4
*//h167_4_1
*//h167_4_2
*//h271
*//h271_1
*//i228
*//i259

//*ECH 2009//
use "C:\Users\evelin.lasarga\Documents\Casavalle\ECH Stata\ech 2009.dta", clear
***PERSONAS***

***variables que cambian de nombre

rename e49 e49_09
rename e50 e49

rename e57_1 e559

*la variable e247 -cantidad de canastas mensuales- en 2009 se pregunta según cada canasta, 
///por lo que se deben sumar las cantidades de cada canasta recibida para obtener la misma variable en 2017
g e247=e59_1_1+e59_2_1+e59_3_1+e59_4_1+e59_5_1+e59_6_1+e59_7_1+e59_8_1+e59_9_1+e59_10_1+e59_11_1+e59_12_1+e59_13_1

***variables que cambian de categoria

rename ccz ccz04

*//categorías solo para Montevideo
rename secc secc_09

*//menos categorías que en 2017
rename locagr locagr_09

*//menos categorías que en 2017
rename nom_locagr nom_locagr_09

*//segm varía algunas categorías
rename segm segm_09

*//barrio varía algunas categorías
rename barrio barrio_09

*//nombarrio varía algunas categorías
rename nombarrio nombarrio_09

*//tipo de unión tiene menos categorías
rename e35 e35_09

*//estado civil no diferencia entre viudo de casamiento y viudo de unión libre
rename e36 e36_09

*//e45_1_1 tiene menos categorías que en 2017
rename e45_1_1 e45_1_1_09

*//e45_2_1 tiene menos categorías que en 2017
rename e45_2_1 e45_2_1_09

*//e45_3_1 tiene menos categorías que en 2017
rename e45_3_1 e45_3_1_09

*//e47 tiene menos categorías que en 2017
rename e47 e47_09

*//f83 tiene menos categorías que en 2017
rename f83 f83_09

*//f92 tiene menos categorías que en 2017
rename f92 f92_09

*//f93 (tamaño de la empresa) tiene menos categorías que en 2017
///#4 (10 a 49 personas) correponde a #6 y #7 en 2017 (10 a 19 personas y 20 a 49 personas)
rename f93 f93_09

*//f97 tiene menos categorías que en 2017
rename f97 f97_09

*//f125 tiene menos categorías que en 2017
rename f125 f125_09

*//g150 tiene categorías 1 y 2 mientras que en 2017 son 1 y 3
replace g150=3 if g150==2

***variables que cambian nombre y categoría

*se divide en 9 categorías mientras que en 2017 son 12
rename estrato estred13_09

***variables que están solo en 2009

*//trimestre
*//e28
*//e40
*//e41
*//e42_2
*//e43_1
*//e43_2
*//e43_3
*//e43_4
*//e43_5
*//e44_1
*//e44_2
*//e44_3
*//e44_4
*//e44_5
*la variable e50 es la e49 en 2017. e49 -asistencia actual a un centro de enseñananza- no está presente en 2017, 
//y se renombra como e49_09, en tanto la e50 como e49 (sección variables que cambian de nombre)
*//e59_1
*//e59_1_1
*//e59_2
*//e59_2_1
*//e59_3
*//e59_3_1
*//e59_4
*//e59_4_1
*//e59_5
*//e59_5_1
*//e59_6
*//e59_6_1
*//e59_7
*//e59_7_1
*//e59_8
*//e59_8_1
*//e59_9
*//e59_9_1
*//e59_10
*//e59_10_1
*//e59_11
*//e59_11_1
*//e59_12
*//e59_12_1
*//e59_13
*//e59_13_1
*//e51_1
*//e57_2_1
*//e57_2_2
*//e57_2_3
*//e57_2_4
*//e57_2_5
*//e57_2_6
*//e57_2_7
*//e57_3_1
*//e57_3_2
*//e57_3_3
*//e57_3_4
*//e58
*//e58_1
*//g150_1
*//indacomun
*//indapensi
*//otrcanast
*//YTDOP
*//YTDOS
*//YTINDE
*//YTRANSF

***variables que están solo en 2017

*//e557
*//e558
*//e29_5_1
*//e185
*//e186_1
*//e186_2
*//e186_3
*//e186_4
*//e234_2
*//e235_2
*//e236
*//e236_2
*//e236_4
*//e45_1_2
*//e45_1_2_1
*//e45_2_1_1
*//e45_2_2
*//e45_2_2_1
*//e45_3_1_1
*//e45_3_2
*//e45_3_2_1
*//e45_4_3
*//e45_4_3_1
*//e45_5_1
*//e45_5_1_1
*//e45_7_1
*//e237
*//e47_1
*//e190
*//e190_1
*//e190_1_1
*//e190_2
*//e190_2_1
*//e190_3
*//e190_3_1
*//e191
*//e192
*//e238
*//e239
*//e240_1
*//e240_2
*//e241
*//e242
*//e242_1
*//e193
*//e194
*//e243_1
*//e243_2
*//e244
*//e245
*//e245_1
*//e196
*//e196_1
*//e196_2
*//e196_3
*//e197
*//e197_1
*//e198
*//e199
*//e200
*//e200_1
*//e200_2
*//e200_3
*//e201
*//e201_1
*//e202_1
*//e202_9
*//e202_10
*//e202_3
*//e202_4
*//e202_8
*//e202_5
*//e202_6
*//e202_6_1
*//e202_7
*//e210_1
*//e210_2
*//e209_1
*//e210_3
*//e211
*//e211_1
*//e211_2
*//e211_3
*//e562
*//e212
*//e212_1
*//e213
*//e212
*//e212_1
*//e213
*//e214_1
*//e215
*//e215_1
*//e216
*//e217_1
*//e218
*//e218_1
*//e219
*//e220_1
*//e221
*//e221_1
*//e222
*//e223_1
*//e224
*//e224_1
*//e225
*//e226_1
*//e559
*//e559_1
*//e559_2
*//e560
*//e560_1
*//e560_1_1
*//e560_2
*//e560_2_1
*//e561
*//e561_1
*//e246
*//e246_1
*//e247 (se crea para 2009)
*//e248
*//e62
*//e249
*//e250
*//f261
*//f262
*//f263
*//f264
*//f264_1
*//f265
*//f265_1
*//f79_1
*//f266
*//f267
*//f268
*//g250_1
*//g250_2
*//g250_5
*//g250_3
*//g250_4
*//g251_1
*//g251_2
*//g251_5
*//g251_3
*//g251_4
*//g_it_2
*//g255
*//g256
*//g151_5
*//g151_1
*//g151_2
*//g151_3
*//g151_3_1
*//g151_4
*//g257
*//g153
*//g153_1
*//g153_2
*//g258
*//g258_1

***HOGARES***

***variables que cambian de nombre

rename yhog YHOG

***variables que cambian de categoria

*//c4 tiene más categorías que en 2017
rename c4 c4_09

*//d8_1 tiene menos categorías que en 2017
rename d8_1 d8_1_09

***variables que cambian nombre y categoría

//////

***variables que están solo en 2009

*//d17
*//d22
*//h157
*//h157_1

***variables que están solo en 2017

*//d260
*//d21_4_1
*//d21_5_1
*//d21_20
*//d21_14_1
*//d21_15_3
*//d21_15_4
*//d21_15_5
*//d21_15_6
*//d21_16_1
*//d21_16_2
*//d21_16_3
*//d21_18_1
*//d21_19_1
*//d181
*//d229
*//d230
*//d231
*//d232
*//d184
*//d184_1
*//h252
*//h252_1
*//h227
*//h269
*//h269_1
*//h167_1
*//h167_1_1
*//h167_1_2
*//h167_2
*//h167_2_1
*//h167_2_2
*//h167_3
*//h167_3_1
*//h167_3_2
*//h167_4
*//h167_4_1
*//h167_4_2
*//h271
*//h271_1
*//i228
*//i259

