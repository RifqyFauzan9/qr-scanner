import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({
    super.key,
    required this.icon,
    required this.label,
    required this.iconColor,
    required this.iconBackgroundColor,
    required this.backgroundColor,
    required this.onTap,
  });

  final String icon;
  final String label;
  final Color iconColor;
  final Color iconBackgroundColor;
  final Color backgroundColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), // Sudut membulat
          color: backgroundColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: iconBackgroundColor, // Warna latar ikon
                borderRadius: BorderRadius.circular(50), // Sudut membulat ikon
              ),
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset(
                icon,
                color: iconColor, // Warna ikon
                width: 50, // Ukuran ikon lebih besar
              ),
            ),
            const SizedBox(height: 15), // Jarak antara ikon dan teks
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 30, // Ukuran teks
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Documents, ID Card,\nMeasure, Count, Passport',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 98, 95, 95),
                fontWeight: FontWeight.bold,
                fontSize: 16, // Ukuran teks
              ),
            ),
          ],
        ),
      ),
    );
  }
}
