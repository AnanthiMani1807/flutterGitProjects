import 'package:flutter/material.dart';

import 'buttons_without_icon.dart';
import 'buttons_with_icon.dart';

const _rowDivider = SizedBox(width: 10);
const _colDivider = SizedBox(height: 30);

void Function()? handlePressed(
    BuildContext context, bool isDisabled, String buttonName) {
  return isDisabled
      ? null
      : () {
    final snackBar = SnackBar(
      content: Text(
        'Yay! $buttonName is clicked!',
        style: TextStyle(color: Theme.of(context).colorScheme.surface),
      ),
      action: SnackBarAction(
        textColor: Theme.of(context).colorScheme.surface,
        label: 'Close',
        onPressed: () {},
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  };
}


class MaterialButtonRoute extends StatefulWidget {

  const MaterialButtonRoute({super.key});

  @override
  MaterialButtonRouteState createState() => MaterialButtonRouteState();
}

class MaterialButtonRouteState extends State<MaterialButtonRoute> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[

            _colDivider,
            Row(
              children: <Widget>[
                Spacer(),
                ButtonsWithIcon(isDisabled: false),
                // Spacer(),
                //ButtonsWithIcon(),
                Spacer(),
                ButtonsWithoutIcon(isDisabled: false),
                Spacer(),
              ],
            ),
            _colDivider,
            Row(
              children: <Widget>[
                Spacer(),
               // FloatingActionButtons(),
                Spacer(),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

