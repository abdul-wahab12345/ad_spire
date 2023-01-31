import 'package:get/get.dart';

class AdType {
  final String id;
  final String title;
  final String imageUrl;

  const AdType({
    required this.id,
    required this.title,
    required this.imageUrl,
  });
}

class AdTypes extends GetxController {
  var types = <AdType>[].obs;
  var imgtypes = <AdType>[].obs;

  void loadDemoPkgsFromSomeWhere() {
    var temps = [
      const AdType(
        id: '1',
        title: 'Simple',
        imageUrl: 'assets/img/rect.png',
      ),
      const AdType(
        id: '2',
        title: 'Abstract',
        imageUrl: 'assets/img/rect.png',
      ),
      const AdType(
        id: '3',
        title: 'Funny',
        imageUrl: 'assets/img/rect.png',
      ),
      const AdType(
        id: '4',
        title: 'Professional',
        imageUrl: 'assets/img/rect.png',
      ),
      const AdType(
        id: '5',
        title: 'Emotional',
        imageUrl: 'assets/img/rect.png',
      ),
      const AdType(
        id: '6',
        title: 'Outrageous',
        imageUrl: 'assets/img/rect.png',
      ),
    ];
    types.addAll(temps);
  }

  void loadDemoImgsFromSomeWhere() {
    var temps = [
      const AdType(
        id: '1',
        title: 'Digital Art',
        imageUrl: 'assets/img/rect.png',
      ),
      const AdType(
        id: '2',
        title: 'Pixel Art',
        imageUrl: 'assets/img/rect.png',
      ),
      const AdType(
        id: '3',
        title: 'Photorealistic',
        imageUrl: 'assets/img/rect.png',
      ),
      const AdType(
        id: '4',
        title: 'Realistic',
        imageUrl: 'assets/img/rect.png',
      ),
      const AdType(
        id: '5',
        title: 'Painted',
        imageUrl: 'assets/img/rect.png',
      ),
      const AdType(
        id: '6',
        title: 'Oil Painted',
        imageUrl: 'assets/img/rect.png',
      ),
      const AdType(
        id: '7',
        title: 'Drawn',
        imageUrl: 'assets/img/rect.png',
      ),
      const AdType(
        id: '8',
        title: '3D',
        imageUrl: 'assets/img/rect.png',
      ),
    ];

    imgtypes.addAll(temps);
  }
}
