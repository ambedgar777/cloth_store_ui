import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Products extends StatefulWidget {
  Products({
    Key? key,
  }) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  Color _selectedColor = Colors.white;

  List<String> products = [
    'assets/images/image1.jpeg',
    'assets/images/image7.jpg',
    'assets/images/image5.jpg',
    'assets/images/image11.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 20.0,
          ),
          child: Text(
            'Top Sales',
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          height: 550,
          width: double.infinity,
          child: GridView.builder(
            itemCount: products.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              mainAxisExtent: 250,
            ),
            itemBuilder: (BuildContext context, index) {
              return Container(
                //height: 250,
                //width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      products[index],
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 180, left: 120),
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: _selectedColor,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          if (_selectedColor == Colors.white) {
                            _selectedColor == Colors.red;
                          } else {
                            _selectedColor == Colors.white;
                          }
                        },
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
