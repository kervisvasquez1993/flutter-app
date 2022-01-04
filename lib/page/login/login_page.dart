import 'package:app_delivery_redvital/page/login/login_controller.dart';
import 'package:app_delivery_redvital/providers/login_form_provider.dart';
import 'package:app_delivery_redvital/screens/ui/input_decorations.dart';
import 'package:app_delivery_redvital/screens/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _controller = new LoginController();

  void initState() {
    // TODO: implement initState
    super.initState();

    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _controller.init(context);
    });
  }

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
                    ChangeNotifierProvider(
                      create: (_) => LoginFormProvider(),
                      child: _LoginForm(_controller),
                    ),
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
  LoginController _con;
  _LoginForm(this._con);

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Container(
        child: Form(
            //TODO: MANTENER LA REFERENCIA EN EL KEY
            key: loginForm.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(children: [
              TextFormField(
                controller: _con.emailController,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                  hintText: 'ejemplo@correo.com',
                  labelText: 'Correo',
                  prefixIcon: Icons.alternate_email_sharp,
                ),
                onChanged: (value) => loginForm.email = value,
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = new RegExp(pattern);
                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'El formato no es correcto';
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: _con.passwordController,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecorations.authInputDecoration(
                  hintText: '****',
                  labelText: 'Contraseña',
                  prefixIcon: Icons.lock_outline,
                ),
                onChanged: (value) => loginForm.password = value,
                validator: (value) {
                  if (value != null && value.length >= 3) return null;

                  return 'La contraseña debe ser mayor a 6 caracteres';
                },
              ),
              SizedBox(height: 30),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Colors.blue,
                onPressed: _con.login,
                // ? null
                // : () async {
                //     FocusScope.of(context).unfocus();
                //     if (!loginForm.isValidForm()) return null;
                //     loginForm.isLoading = true;
                //     await Future.delayed(Duration(milliseconds: 100));
                //     //todo: validar si el login es correcto
                //     loginForm.isLoading = false;
                //     Navigator.pushReplacementNamed(context, 'home');
                //   },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  child: Text(
                    loginForm.isLoading ? "Validando informacion" : "ingresar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ])),
      ),
    );
  }
}
