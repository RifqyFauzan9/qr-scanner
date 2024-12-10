import 'package:flutter/material.dart';

// snackbar kustom untuk informasi tambahan.
class CustomSnackbar extends StatelessWidget {
 const CustomSnackbar({super.key});


 @override
 Widget build(BuildContext context) {
   return Container(
     margin: const EdgeInsets.all(16),
     padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
     decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(16),
       boxShadow: const [
         BoxShadow(
           color: Colors.black26,
           blurRadius: 10,
           offset: Offset(0, 4),
         ),
       ],
     ),
     child: Column(
       mainAxisSize: MainAxisSize.min,
       children: [
         const Text(
           "Scan QR Code",
           style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.bold,
             color: Colors.black,
           ),
         ),
         const SizedBox(height: 10),
         const Text(
           "Place QR code inside the frame to scan. Please avoid shake to get results quickly.",
           style: TextStyle(
             fontSize: 14,
             color: Colors.black54,
           ),
           textAlign: TextAlign.center,
         ),
         const SizedBox(height: 20),
         Center(
           child: Image.asset(
             'assets/images/scan-icon.png',
             width: 220,
             height: 220,
           ),
         ),
       ],
     ),
   );
 }
}


