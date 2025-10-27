import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String imageUrl;
  final double size;
  final VoidCallback? onTap;

  const UserAvatar({
    super.key,
    required this.imageUrl,
    this.size = 80,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // bisa buat buka profil, ganti foto, dll
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            colors: [
              Color(0xFFB388FF),
              Color(0xFF7C4DFF),
            ], // warna ungu gradasi
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.purple.withValues(alpha: 0.3),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: CircleAvatar(
          radius: size / 2,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: size / 2 - 5,
            backgroundImage: imageUrl.isEmpty || imageUrl == ''
                ? AssetImage('lib/media/image/person-svgrepo-com.png')
                : NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
