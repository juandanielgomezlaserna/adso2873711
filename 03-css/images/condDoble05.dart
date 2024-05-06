import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Dobles - EJE_05
Un cliente ordena cierta cantidad de brochas de cerda y rodillos; las brochas de cerda tienen un 20% de
descuento y los rodillos un 15% de descuento. Los datos que se tienen por cada tipo de artículo son: la cantidad
pedida y el precio unitario. Además, si se paga de contado todo tiene un descuento del 7%. Elaborar un
programa que calcule y muestre en pantalla el costo total de la orden, tanto para el pago de contado como
para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el
usuario ingresa 2.
*/
  // Definición de variables
  double precioBrocha = 10.0;
  double precioRodillo = 15.0;
  int cantidadBrochas;
  int cantidadRodillos;
  int tipoPago;
  double costoBrochas;
  double costoRodillos;
  double descuentoBrochas;
  double descuentoRodillos;
  double costoTotalSinDescuento;
  double costoTotalConDescuento;
  double costoFinal;

  // Entrada
  stdout.write("Ingrese la cantidad de brochas: ");
  cantidadBrochas = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la cantidad de rodillos: ");
  cantidadRodillos = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese 1 para pago de contado o 2 para pago a crédito: ");
  tipoPago = int.parse(stdin.readLineSync()!);

  // Proceso
  costoBrochas = cantidadBrochas * precioBrocha;
  costoRodillos = cantidadRodillos * precioRodillo;

  descuentoBrochas = costoBrochas * 0.20;
  descuentoRodillos = costoRodillos * 0.15;

  costoTotalSinDescuento = costoBrochas + costoRodillos;
  costoTotalConDescuento = costoTotalSinDescuento - descuentoBrochas - descuentoRodillos;

  if (tipoPago == 1) {
    double descuentoContado = costoTotalConDescuento * 0.07;
    costoFinal = costoTotalConDescuento - descuentoContado;
  } if (tipoPago == 2) {
    costoFinal = costoTotalConDescuento;
  } else {
    print("Opción de pago inválida.");
    return;
  }

  // Salida
  print("El costo total de la orden es: $costoFinal");
}
