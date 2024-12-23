import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';
import 'folder_card_widget.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        title: Text(
          'My Profile',
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
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Color(0xFF22215B),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/profile.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Iqbal Suwandi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Computer Science graduate skilled in Flutter development and network support.',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF317B),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'PRO',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
                Text(
                  'My Folders',
                  style: TextStyle(
                    color: Color(0xFF22215B),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/icons/add.svg'),
                      SvgPicture.asset('assets/icons/setting.svg'),
                      SvgPicture.asset('assets/icons/vector.svg'),
                    ],
                  ),
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
                  title: 'Avatars',
                  date: 'Novemaber 10.2020',
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
                Text(
                  'Recent Uploads',
                  style: TextStyle(
                    color: Color(0xFF22215B),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SvgPicture.asset('assets/icons/sort.svg'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: SvgPicture.asset(
                'assets/icons/microsoft_word.svg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Projects.docx',
              style: TextStyle(
                color: Color(0xFF22215B),
              ),
            ),
            subtitle: Text(
              'Novemaber 22.2020',
              style: TextStyle(
                color: Color(0xFF22215B).withOpacity(0.6),
              ),
            ),
            trailing: Text(
              '300kb',
              style: TextStyle(
                color: Color(0xFF22215B).withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
