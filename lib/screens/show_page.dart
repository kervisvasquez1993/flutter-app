import 'package:app_delivery_redvital/screens/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ShowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ProductImage(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
