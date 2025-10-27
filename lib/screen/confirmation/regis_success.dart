import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisSuccess extends StatefulWidget {
  const RegisSuccess({super.key});

  @override
  State<RegisSuccess> createState() => _RegisSuccessState();
}

class _RegisSuccessState extends State<RegisSuccess> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsetsGeometry.only(left: 20, right: 20, top: 60),
        child: Column(
          children: [
            Align(
              alignment: AlignmentGeometry.topLeft,
              child: GestureDetector(
                onTap: () => print('asdasd'),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Image.asset('lib/media/image/5939065.jpg'),
            SizedBox(height: 30),
            Text(
              'Selamat',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Kami Telah Mengirimkan Kepada Anda Email Verifikasi, Tolong Check Inbox Email Anda Dan Ikuti Perintah Untuk Verifikasi Akun Anda',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'Terima Kasih Anda Telah Mendaftar Bersama Kami',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            TextButton(
              onPressed: () {
                context.go('/login');
              },
              child: Text(
                'Login Disini',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
