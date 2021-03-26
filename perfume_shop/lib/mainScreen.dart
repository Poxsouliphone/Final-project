import 'dart:io';

import 'package:perfume_shop/login.dart';
import 'package:perfume_shop/pageOne.dart';
import 'package:perfume_shop/pageTwo.dart';
import 'package:flutter/material.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color mainTheme = Color(0xFFFF8A89);
    return Scaffold(
      drawer: Drawer(
        child: Column(
            children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Macky'),
            accountEmail: Text('Maxxvongdavanh@gmail.com'),
            currentAccountPicture: CircleAvatar(
               child: Image.network('https://scontent.fvte2-3.fna.fbcdn.net/v/t1.0-9/130835166_1415105812167811_7684579825269535211_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeECyp19z9T_vog0gNYHp0mDsyIRc8b5YbyzIhFzxvlhvHXExOYni2nCg_ub41Yc2nf06UaxhCvCIBRXCv1V533h&_nc_ohc=l8JxRyFJQzYAX_XQ7UQ&_nc_ht=scontent.fvte2-3.fna&oh=6d1b8e99a6d69141336d5a30c71889fa&oe=6080DBCC',
          ),

        ),
      ),
            ListTile(
              title: Text(
                'ຂໍ້ມູນສ່ວນຕົວ',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.perm_contact_cal_sharp, color: mainTheme,),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              title: Text(
                'ໜ້າຫຼັກ',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.home, color: mainTheme),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              title: Text(
                'ຮ້ານຄ້າ 1',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.store, color: mainTheme,),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => PageOne()));
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              title: Text(
                'ຮ້ານຄ້າ 2',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.store, color: mainTheme,),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => PageTwo()));
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              title: Text(
                'ກ່ຽວກັບ',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.info_sharp, color: mainTheme,),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              title: Text(
                'ອອກຈາກລະບົບ',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.logout, color: mainTheme,),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'ໜ້າຫຼັກ',
          style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: mainTheme,
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFFF),
                image: const DecorationImage(
                  image: NetworkImage('https://www.pngitem.com/pimgs/m/207-2079856_coco-mademoiselle-no-chanel-parfum-no-5-hd.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFFF),
                image: const DecorationImage(
                  image: NetworkImage('https://cdn.quotesgram.com/img/34/8/1480458145-perfume-feminino-coco-mademoiselle-chanel-100ml-edp-9754-MLB20020359780_122013-F.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFFF),
                image: const DecorationImage(
                  image: NetworkImage('https://www.pngitem.com/pimgs/m/101-1010345_transparent-cologne-clipart-gabrielle-chanel-parfum-hd-png.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFFF),
                image: const DecorationImage(
                  image: NetworkImage('https://www.chanel.com/images/w_0.51,h_0.51,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_1920/coco-mademoiselle-eau-de-parfum-intense-spray-3-4fl-oz--packshot-default-116660-8831021678622.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFFF),
                image: const DecorationImage(
                  image: NetworkImage('https://www.chanel.com/images/w_0.51,h_0.51,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_1920/n-5-l-eau-eau-de-toilette-spray-3-4fl-oz--packshot-default-105530-8831020826654.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFFF),
                image: const DecorationImage(
                  image: NetworkImage('https://www.kindpng.com/picc/m/261-2610191_classic-marine-chanel-perfume-hd-png-download.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ],
        )
        ),
    );
  }
}
