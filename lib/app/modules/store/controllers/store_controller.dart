import 'package:ad_spire/models/credit_package.dart';
import 'package:get/get.dart';

class StoreController extends GetxController {

  final pkgController = Get.put(CreditPackages());

  final pkgs = <CreditPackage>[].obs;
  @override
  void onInit() {
    super.onInit();
    pkgController.loadDemoPkgsFromSomeWhere();
  }

  @override
  void onReady() {
    super.onReady();
    pkgs.addAll(pkgController.pkgs);
    pkgs[1].price;
  }

  @override
  void onClose() {
    super.onClose();
  }

  String calculatePerValue(CreditPackage pkg) {
    return (double.parse(pkg.price) / double.parse(pkg.creditsCount))
        .toStringAsFixed(2);
  }
}
