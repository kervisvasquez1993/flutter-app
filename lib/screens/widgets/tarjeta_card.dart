import 'package:flutter/material.dart';

class TargetaCard extends StatelessWidget {
  const TargetaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(top: 25, bottom: 50),
        width: double.infinity,
        height: 400,
        // color: Colors.red,
        decoration: _BoxDecoration(),
        child: Stack(
          children: [BackgroundImage()],
        ),
      ),
    );
  }

  BoxDecoration _BoxDecoration() {
    return BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 7),
            blurRadius: 10,
          )
        ]);
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      child: FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'),
        image: NetworkImage(
            'https://ik.imagekit.io/demo/img/image1.jpeg?tr=w-400,h-300'),
      ),
    );
  }
}
