import 'package:get/get.dart';

class CreditPackage {
  final String id;
  final String price;
  final String creditsCount;
  final bool isBest;

  const CreditPackage({
    required this.id,
    required this.price,
    required this.creditsCount,
    required this.isBest,
  });
}

class CreditPackages extends GetxController {
  var pkgs = <CreditPackage>[].obs;

  void loadDemoPkgsFromSomeWhere() {
    var temps = [
      const CreditPackage(id: '1', price: '4.99', creditsCount: '10', isBest: false),
      const CreditPackage(id: '2', price: '9.99', creditsCount: '25', isBest: false),
      const CreditPackage(id: '3', price: '19.99', creditsCount: '60', isBest: false),
      const CreditPackage(id: '4', price: '39.99', creditsCount: '140', isBest: false),
      const CreditPackage(id: '5', price: '99.99', creditsCount: '400', isBest: true),
    ];
    pkgs.addAll(temps);
  }
}
