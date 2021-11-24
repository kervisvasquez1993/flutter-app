import 'package:app_delivery_redvital/screens/ui/input_decorations.dart';
import 'package:app_delivery_redvital/screens/widgets/widget.dart';
import 'package:flutter/material.dart';

class LoginScreens extends StatelessWidget {
  const LoginScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              CartContainer(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text("Ingresar",
                        style: Theme.of(context).textTheme.headline4),
                    SizedBox(height: 10),
                    _LoginForm()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Form(
            //TODO: MANTENER LA REFERENCIA EN EL KEY
            child: Column(children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
              hintText: 'ejemplo@correo.com',
              labelText: 'Correo',
              prefixIcon: Icons.alternate_email_sharp,
            ),
          ),
          SizedBox(height: 30),
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
              hintText: '****',
              labelText: 'Contraseña',
              prefixIcon: Icons.lock_outline,
            ),
          ),
          SizedBox(height: 30),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            disabledColor: Colors.grey,
            elevation: 0,
            color: Colors.blue,
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
              child: Text(
                'ingresar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ])),
      ),
    );
  }
}
