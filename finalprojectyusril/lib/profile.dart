import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:finalprojectyusril/style.dart';

class profil extends StatefulWidget {
  const profil({Key? key}) : super(key: key);

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light ,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('My Profile', style: Head,),),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 170),
              child: Container(
                child: Image.asset('assets/images/foto_profile.jpg', width: 256, height: 128),
              ),
              ),
              Column(
                children: [
                  Text('Yusril Febriyanto', style: Profil ),
                  Text('19.0504.0067', style: Profil),
                  Text('Teknik Informatika S1 / 6C', style: Profil,),
                ],
              ),
          ],),)
    );
  }
}