import 'package:flutter/material.dart';

class Myphotos extends StatelessWidget {
  const Myphotos({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight / 2.5,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            child: Image.asset("assets/photo1.png"),
            onTap: () => _showImageDialog(context, "assets/photo1.png"),
          ),
          GestureDetector(
            child: Image.asset("assets/photo2.png"),
            onTap: () => _showImageDialog(context, "assets/photo2.png"),
          ),
          GestureDetector(
            child: Image.asset(
              "assets/photo1.png",
            ),
            onTap: () => _showImageDialog(context, "assets/photo1.png"),
          ),
        ],
      ),
    );
  }

  void _showImageDialog(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ImageDialog(
          image: Image.asset(imagePath),
        );
      },
    );
  }
}

class ImageDialog extends StatelessWidget {
  final Image image;
  const ImageDialog({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero, // No rounded corners
      ),
      insetPadding: EdgeInsets.all(10), // Optional padding around the dialog
      child: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight / 1.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: image.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const CircleAvatar(
                backgroundColor: Colors.black54,
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
