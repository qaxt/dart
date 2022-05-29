import 'dart:math';

class Imaginary {
  num coeff = 1;
  Imaginary(num coeff) {
    this.coeff = coeff;
  }
}

class Power {
  num base = 0;
  num exponent = 0;
  dynamic value = 0;
  Power(num base, num exponent) {
    this.base = base;
    this.exponent = exponent;
    if (!(exponent is int) && base < 0) {
      this.value = new Imaginary(pow(-base, exponent));
    } else {
      this.value = pow(base, exponent);
    }
  }
}

void main() {
  var irrat = new Power(-4, 1/2);
  print(irrat.base);
  print(irrat.exponent);
  print(irrat.value.coeff);
}