import 'dart:math';

class Imaginary {
  dynamic coeff = 1;

  Imaginary(num base, num exponent) {
    this.coeff = new Power(base, exponent);
  }

  void log() {
    if (coeff.round() == coeff) {
      print('${coeff.toInt()}i');
    } else {
      print('${coeff}i');
    }
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
      if (pow(-base, exponent) == pow(-base, exponent).round()) {
        this.value = new Imaginary(-base, exponent);
      } else {
        this.value = new Imaginary(-base, exponent);
      }
    } else {
      this.value = pow(base, exponent);
    }
  }

  dynamic round([n = 1]) {
    return ((pow(base, exponent) / n).round()) * n;
  }
}

void main() {
  var imag = new Power(-4, 1/2);
  print(imag.base);
  print(imag.exponent);
  print(imag.value.coeff);
  imag.value.log();
  print(imag.value.coeff.base);
  print(imag.value.coeff.value);
}