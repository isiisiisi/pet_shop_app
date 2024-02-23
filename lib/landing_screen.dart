import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_shop_app/catalog_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/1_cat.png', scale: 0.9),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 365,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 55,
                    bottom: 20.0,
                    left: 21.89,
                    right: 21.89,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'Your One Stop Pet-Shop Experience!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 26.27,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Connect with 5-star pet caregivers near you who offer boarding, walking, house sitting or day care.',
                        style: GoogleFonts.poppins(
                          fontSize: 17.51,
                          color: const Color(0xFFA1A1A1),
                        ),
                      ),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                              return const CatalogScreen();
                              }
                            )
                          ),
                        child: Center(
                          child: Container(
                            width: 360,
                            height:
                                70, // Adjust the width according to your requirements
                            decoration: BoxDecoration(
                              color: const Color(0xFFE8BE13),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(24),
                            alignment: Alignment.center,
                            child: const Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.51,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ], // children
          ),
        ], //children
      ),
    );
  }
}
