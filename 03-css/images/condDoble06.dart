import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Dobles - EJE_06
 El gobierno colombiano desea reforestar un bosque que mide determinado número de hectáreas. Si la
superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:
Porcentaje de la superficie del bosque Tipo de árbol
70% Pino
20% Roble
10% Cedro
Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la
sig. manera:
Porcentaje de la superficie del bosque Tipo de árbol
50% Pino
30% Roble
20% Cedro
El gobierno desea saber el numero de pinos, robles y cedros que tendrá que sembrar en el bosque, si se sabe
que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 robles y en 18 metros cuadrados
caben 10 cedros. También se sabe que una hectárea equivale a 10 mil metros cuadrados.
*/
  // Definición de variables
  double hectareas;
  int superficieMetrosCuadrados;
  int numPinos;
  int numRobles;
  int numCedros;

  // Entrada de datos
  stdout.write("Ingrese el número de hectáreas del bosque: ");
  hectareas = double.parse(stdin.readLineSync()!);

  // Proceso
  superficieMetrosCuadrados = (hectareas * 10000).toInt(); // Convertir hectáreas a metros cuadrados

  if (superficieMetrosCuadrados > 1000000) {
    // Si la superficie es mayor a 1 millón de metros cuadrados
    numPinos = (superficieMetrosCuadrados * 0.70 / 10 * 8).toInt();
    numRobles = (superficieMetrosCuadrados * 0.20 / 15 * 15).toInt();
    numCedros = (superficieMetrosCuadrados * 0.10 / 18 * 10).toInt();
  } else {
    // Si la superficie es menor o igual a 1 millón de metros cuadrados
    numPinos = (superficieMetrosCuadrados * 0.50 ~/ 10 * 8).toInt();
    numRobles = (superficieMetrosCuadrados * 0.30 ~/ 15 * 15).toInt();
    numCedros = (superficieMetrosCuadrados * 0.20 ~/ 18 * 10).toInt();
  }

  // Salida
  print("Número de pinos a sembrar: $numPinos");
  print("Número de robles a sembrar: $numRobles");
  print("Número de cedros a sembrar: $numCedros");
}


