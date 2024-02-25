import 'package:flutter/material.dart';

class PetTile extends StatelessWidget {
  final String petBreed;
  final String petPrice;
  final String imagePath;
  final Color color;
  final VoidCallback onTap;

  const PetTile({
    super.key,
    required this.petBreed,
    required this.petPrice,
    required this.imagePath,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  const BoxShadow(
                          color: Color.fromARGB(255, 122, 122, 122),
                          spreadRadius: 20,
                          blurRadius: 15,
                          offset: Offset(0, 15))
                      .scale(4)
                ]),
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      imagePath,
                      height: 117.63,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0, top: 6.0),
                    child: Text(
                      petBreed,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontSize: 16, color: Color.fromARGB(255, 68, 68, 68)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        petPrice,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontSize: 16, color: Color(0xFFE8BE13)),
                      ),
                      const Icon(
                        Icons.shopping_cart,
                        size: 18,
                        color: Color(0xFFE8BE13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
