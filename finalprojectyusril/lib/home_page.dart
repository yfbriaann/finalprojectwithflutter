import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:finalprojectyusril/style.dart';

class halaman_utama extends StatelessWidget {
  const halaman_utama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light ,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Literally Authentic', style: Head,),),

      body: Center(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Column(
                children: [
                  Image.asset('assets/images/homepage_logo.png'
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}