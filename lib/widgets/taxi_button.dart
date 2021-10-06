import 'package:flutter/material.dart';
import 'package:uber_clone/brand_colors.dart';

class TaxiButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const TaxiButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: BrandColors.colorGreen),
      onPressed: onPressed,
      child: SizedBox(
        height: 50.0,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontFamily: 'Brand-Bold',
            ),
          ),
        ),
      ),
    );
  }
}
