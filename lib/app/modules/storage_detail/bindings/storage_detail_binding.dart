import 'package:get/get.dart';

import '../controllers/storage_detail_controller.dart';

class StorageDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StorageDetailController>(
      () => StorageDetailController(),
    );
  }
}
