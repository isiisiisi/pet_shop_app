import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_shop_app/components/pet_tile.dart';
import 'package:provider/provider.dart';
import 'model/cart_model.dart';
import 'package:pet_shop_app/details_screen.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //store title
        Padding(
          padding: const EdgeInsets.only(
            top: 60,
            bottom: 20.0,
          ),
          child: Center(
            child: Text(
              'Store',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 23,
              ),
            ),
          ),
        ),

        //search bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 228, 228, 228),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search for pet',
                hintStyle: TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
                prefixIcon: Icon(Icons.search,
                    color: Color.fromARGB(255, 124, 124, 124)),
                border: InputBorder.none,
              ),
            ),
          ),
        ),

         const SizedBox(height: 7),

        // pet catalog
        Expanded(
          child: Consumer<CartModel>(builder: (context, value, child) {
            return GridView.builder(
              itemCount: value.shopPets.length,
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0.0,
                  childAspectRatio: 0.93
              ),
              itemBuilder: (context, index) {
                return PetTile(
                  petBreed: value.shopPets[index][0],
                  petPrice: value.shopPets[index][1],
                  imagePath: value.shopPets[index][2],
                  color: value.shopPets[index][3],
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const DetailsScreen()));
                  },
                );
              },
            );
          }),
        ),
        //navigation bar
      ],
    ));
  }
}
