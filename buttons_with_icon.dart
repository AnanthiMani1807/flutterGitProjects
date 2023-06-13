import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'brand_button.dart';
import 'material_buttonRoute.dart';

class ButtonsWithIcon extends StatelessWidget {
  final bool isDisabled;
  const ButtonsWithIcon({super.key, required this.isDisabled});
  @override
  Widget build(BuildContext context) {
    const colDivider = SizedBox(height: 30);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // Aligns all widgets in the column to stretch along the cross axis
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        // Elevated button
        BrandButton.primary(
          child: const Text('button 1'),
          onPressed: handlePressed(context, isDisabled, "BrandButton.primary"),
          leftIcon: Icon(Icons.arrow_circle_left),
        ),

        colDivider,

        BrandButton.primaryMedium(
          child: const Text('button 2'),
          onPressed: handlePressed(context, isDisabled, "BrandButton.primaryMedium"),
          rightIcon: Icon(Icons.arrow_circle_left),
        ),

        colDivider,

        BrandButton.primarySmall(
          leftIcon: SvgPicture.asset(
            'assets/images/flutter.svg',
            width: 24,
            height: 24,
            color: Colors.white,
          ),
          onPressed: handlePressed(context, isDisabled, "BrandButton.primarySmall"),
          child: const Text('Button 2'),
        ),


        colDivider,

        BrandButton.secondary(
          rightIcon: SvgPicture.asset(
            'assets/images/download.png',
            width: 24,
            height: 24,
            color: Colors.white,
          ),
          onPressed: handlePressed(context, isDisabled, "BrandButton.primarySmall"),
          child: const Text('Button 2'),
        ),

        colDivider,

        BrandButton.secondaryMedium(
          child: const Text('button 2'),
          onPressed: handlePressed(context, isDisabled, "BrandButton.secondaryMedium"),
        ),

        colDivider,

        BrandButton.secondarySmall(
          onPressed: handlePressed(context, isDisabled, "BrandButton.secondarySmall"),
          child: const Text('button 2'),
        ),

        colDivider,

        BrandButton.tertiary(
          child: const Text('Text button'),
          onPressed: handlePressed(context, isDisabled, "BrandButton.tertiary"),
        ),

        colDivider,

        BrandButton.tertiaryMedium(
          child: const Text('Text button'),
          onPressed: handlePressed(context, isDisabled, "BrandButton.tertiaryMedium"),
        ),

        colDivider,

        BrandButton.tertiarySmall(
          child: const Text('Text button'),
          onPressed: handlePressed(context, isDisabled, "BrandButton.tertiarySmall"),
        ),

        // Vertical divider to separate buttons
        // Text button

      ],
    );
  }
}