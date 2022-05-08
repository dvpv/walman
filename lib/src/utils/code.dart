import 'package:barcode/barcode.dart';
import 'package:mobile_scanner/mobile_scanner.dart' as scanner;

Barcode barcodeFromScannerBarcodeFormat(scanner.BarcodeFormat format) {
  // ignore: missing_enum_constant_in_switch
  switch (format) {
    case scanner.BarcodeFormat.aztec:
      return Barcode.aztec();
    case scanner.BarcodeFormat.code39:
      return Barcode.code39();
    case scanner.BarcodeFormat.code93:
      return Barcode.code93();
    case scanner.BarcodeFormat.code128:
      return Barcode.code128();
    case scanner.BarcodeFormat.codebar:
      return Barcode.codabar();
    case scanner.BarcodeFormat.dataMatrix:
      return Barcode.dataMatrix();
    case scanner.BarcodeFormat.ean8:
      return Barcode.ean8();
    case scanner.BarcodeFormat.ean13:
      return Barcode.ean13();
    case scanner.BarcodeFormat.itf:
      return Barcode.itf();
    case scanner.BarcodeFormat.qrCode:
      return Barcode.qrCode();
    case scanner.BarcodeFormat.upcA:
      return Barcode.upcA();
    case scanner.BarcodeFormat.upcE:
      return Barcode.upcE();
    case scanner.BarcodeFormat.pdf417:
      return Barcode.pdf417();
  }
  throw Exception('Unknown format');
}
