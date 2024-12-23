import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/storage_detail_controller.dart';

class StorageDetailView extends GetView<StorageDetailController> {
  const StorageDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StorageDetailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'StorageDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
