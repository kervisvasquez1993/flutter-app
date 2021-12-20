import 'package:app_delivery_redvital/screens/ui/input_decorations.dart';
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
                Positioned(
                  top: 60,
                  left: 20,
                  child: IconButton(
                    onPressed: () {
                      return Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 20,
                  child: IconButton(
                    onPressed: () {
                      // TODO: CAMARA O GALERIA
                    },
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ProductForm(),
            SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}

class ProductForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: _builDecoration(),
        child: Form(
            child: Column(
          children: [
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'Titulo',
                  labelText: 'Titulo',
                  prefixIcon: Icons.title_sharp),
            ),
            TextFormField(
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'Descripción',
                  labelText: 'Descripción',
                  prefixIcon: Icons.description_outlined),
              minLines:
                  1, // any number you need (It works as the rows for the textarea)
              keyboardType: TextInputType.multiline,
              maxLines: null,
            ),
            SizedBox(height: 25),
          ],
        )),
      ),
    );
  }

  BoxDecoration _builDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(25),
        bottomLeft: Radius.circular(25),
      ),
    );
  }
}
