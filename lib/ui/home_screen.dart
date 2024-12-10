import 'package:flutter/material.dart';
import 'package:qr_generator_and_scanner/ui/qr_generator_screen.dart';
import 'package:qr_generator_and_scanner/ui/qr_scanner_screen.dart';
import 'package:qr_generator_and_scanner/widgets/build_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Column(
              children: [
                BuildButton(
                  icon: 'assets/icons/qr-scanner.svg',
                  label: 'Scan',
                  iconColor: Colors.black,
                  iconBackgroundColor: Colors.white,
                  backgroundColor: const Color(0xffE8E2C1),
                  onTap: () =>
                      Navigator.pushNamed(context, QrScannerScreen.routeName),
                ),
                const SizedBox(height: 30),
                BuildButton(
                  icon: 'assets/icons/qr-generator.svg',
                  label: 'Generate',
                  iconColor: Colors.black,
                  iconBackgroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 249, 237, 173),
                  onTap: () =>
                      Navigator.pushNamed(context, QrGeneratorScreen.routeName),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xff323232),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [
                          Icon(
                            Icons.settings,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Settings',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, QrGeneratorScreen.routeName);
                        },
                        child: const Column(
                          children: [
                            Icon(
                              Icons.qr_code,
                              size: 25,
                              color: Colors.white,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Generate',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned.fill(
                  top: -75,
                  child: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, QrScannerScreen.routeName);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 254, 230, 46),
                        ),
                        child: const Icon(
                          Icons.qr_code_scanner,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
