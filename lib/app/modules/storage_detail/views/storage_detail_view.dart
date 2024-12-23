import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/storage_detail_controller.dart';

class StorageDetailView extends GetView<StorageDetailController> {
  const StorageDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    final storageItems = [
      {
        "icon": 'assets/icons/elips_blue.svg',
        "title": 'Design Files',
        "subtitle": '38.66 GB',
        "trailing": 'assets/icons/line_blue.svg',
      },
      {
        "icon": 'assets/icons/elips_yellow.svg',
        "title": 'Images',
        "subtitle": '24.80 GB',
        "trailing": 'assets/icons/line_yellow.svg',
      },
      {
        "icon": 'assets/icons/elips_green.svg',
        "title": 'Video',
        "subtitle": '12.60 GB',
        "trailing": 'assets/icons/line_green.svg',
      },
      {
        "icon": 'assets/icons/elips_purple.svg',
        "title": 'Documents',
        "subtitle": '06.57 GB',
        "trailing": 'assets/icons/line_purple.svg',
      },
      {
        "icon": 'assets/icons/elips_orange.svg',
        "title": 'Others',
        "subtitle": '2.01 GB',
        "trailing": 'assets/icons/line_orange.svg',
      },
    ];

    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        title: Text(
          'Storage Details',
          style: TextStyle(
            color: Color(0xFF22215B),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF22215B),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(
              Icons.more_horiz,
              color: Color(0xFF22215B),
            ),
          ),
        ],
        backgroundColor: Color(0xFFF1F1F1),
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Column(
            children: [
              SvgPicture.asset('assets/icons/storage.svg'),
              SizedBox(height: 20),
              Text(
                'Available',
                style: TextStyle(
                  color: Color(0xFF22215B),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '43.36 GB',
                style: TextStyle(
                  color: Color(0xFF22215B),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Total 128 GB',
                style: TextStyle(
                  color: Color(0xFF22215B),
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          for (var item in storageItems)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: ListTile(
                leading: SvgPicture.asset(item["icon"]!),
                title: Text(
                  item["title"]!,
                  style: TextStyle(
                    color: Color(0xFF22215B),
                  ),
                ),
                subtitle: Text(
                  item["subtitle"]!,
                  style: TextStyle(
                    color: Color(0xFF22215B).withOpacity(0.6),
                  ),
                ),
                trailing: SvgPicture.asset(item["trailing"]!),
              ),
            ),
        ],
      ),
    );
  }
}
