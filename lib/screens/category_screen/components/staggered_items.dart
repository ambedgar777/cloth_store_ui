import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class StaggeredItems extends StatelessWidget {
  List<String> productPath = [
    'assets/images/image11.jpeg',
    'assets/images/image7.jpg',
    'assets/images/image8.jpeg',
    'assets/images/image1.jpeg',
    'assets/images/image3.jpeg',
    'assets/images/image2.jpeg',
    'assets/images/image9.jpg',
    'assets/images/image6.jpg',
  ];

  List<String> productTitle = [
    'Denim Jacket',
    'Winter T-shirt',
    'Black Top',
    'Cotton Coat',
    'Yellow Dress',
    'Check Shirt',
    'White Dress',
    'Red Dress',
  ];

  List<String> productPrice = [
    '\$32.99',
    '\$40.99',
    '\$49.99',
    '\$35.99',
    '\$19.99',
    '\$99.99',
    '\$49.99',
    '\$44.99',
  ];

  StaggeredItems({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: MasonryGridView.count(
          crossAxisCount: 2,
          physics: ScrollPhysics(),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          shrinkWrap: true,
          itemCount: productPath.length,
          itemBuilder: (BuildContext context, index) {
            return Stack(
              children: [
                Container(
                  height: (index) == 0 ? 250 : 300,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                productPath[index],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        productTitle[index],
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        productPrice[index],
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
