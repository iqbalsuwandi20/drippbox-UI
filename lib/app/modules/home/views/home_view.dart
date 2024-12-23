import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';
import 'folder_card_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Dribbox',
                  style: TextStyle(
                    color: Color(0xFF22215B),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                    onTap: () => Get.toNamed(
                          Routes.profile,
                        ),
                    child: SvgPicture.asset('assets/icons/union.svg')),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              autocorrect: false,
              textInputAction: TextInputAction.done,
              cursorColor: Color(0xFF22215B),
              decoration: InputDecoration(
                label: Text(
                  'Search Folder',
                  style: TextStyle(
                    color: Color(0xFF22215B),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF22215B),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text(
                  'Recent',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF22215B),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SvgPicture.asset('assets/icons/down_arrow.svg'),
                Spacer(),
                SizedBox(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Get.toNamed(Routes.storageDetail),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: SvgPicture.asset('assets/icons/storage.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolderWidget(
                  title: 'Mobile Apps',
                  date: 'December 20.2020',
                  color: Color(0xFF415EB6),
                  svgPicture: SvgPicture.asset('assets/icons/folder_blue.svg'),
                ),
                CardFolderWidget(
                  title: 'SVG Icons',
                  date: 'December 14.2020',
                  color: Color(0xFFFFB110),
                  svgPicture:
                      SvgPicture.asset('assets/icons/folder_yellow.svg'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolderWidget(
                  title: 'Prototypes',
                  date: 'Novemaber 22.2020',
                  color: Color(0xFFAC4141),
                  svgPicture: SvgPicture.asset('assets/icons/folder_red.svg'),
                ),
                CardFolderWidget(
                  title: 'SVG Icons',
                  date: 'December 14.2020',
                  color: Color(0xFF23B0B0),
                  svgPicture: SvgPicture.asset('assets/icons/folder_green.svg'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolderWidget(
                  title: 'Design',
                  date: 'Novemaber 22.2020',
                  color: Color(0xFF415EB6),
                  svgPicture: SvgPicture.asset('assets/icons/folder_blue.svg'),
                ),
                CardFolderWidget(
                  title: 'Portfolio',
                  date: 'December 14.2020',
                  color: Color(0xFFFFB110),
                  svgPicture:
                      SvgPicture.asset('assets/icons/folder_yellow.svg'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolderWidget(
                  title: 'References',
                  date: 'Novemaber 22.2020',
                  color: Color(0xFFAC4141),
                  svgPicture: SvgPicture.asset('assets/icons/folder_red.svg'),
                ),
                CardFolderWidget(
                  title: 'Clients',
                  date: 'December 14.2020',
                  color: Color(0xFF23B0B0),
                  svgPicture: SvgPicture.asset('assets/icons/folder_green.svg'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
