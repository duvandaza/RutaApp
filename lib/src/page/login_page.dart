import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ruta/src/widget/button_general.dart';
import 'package:ruta/src/widget/input_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool recordar = false;

  @override
  Widget build(BuildContext context) {

    final  size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.22,
              padding: EdgeInsets.only(top: size.height * 0.08),
              color: Colors.green,
              child: Column(
                children: const [
                  Text('AMB APP', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),),
                  SizedBox(height: 15,),
                  Text('Login', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),),
                ],
              ),
            ),
            const SizedBox(height: 40,),
            SizedBox(
              width: size.width * 0.85,
              child: const InputLogin(titulo: 'Celular', hintText: 'Escriba su numero', tipo: TextInputType.phone, password: false,)
            ),
            SizedBox(
              width: size.width * 0.85,
              child: const InputLogin(titulo: 'Clave', hintText: 'Escriba su numero', tipo: TextInputType.visiblePassword, password: true,)
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.07, vertical: size.height * 0.015),
              child: Row(
                children: [
                  CupertinoSwitch(
                    value: recordar,
                    onChanged: (value) => setState(() {recordar = value;})
                  ),
                  const SizedBox(width: 10,),
                  const Text('Recordar', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.1,),
            Button(navigator: () => Navigator.pushReplacementNamed(context, 'inicio'), titulo: 'Entrar', ancho: 0.5),
            SizedBox(height: size.height * 0.03,),
            const Text('olvido su clave?', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
          ],
        ),
      ),
    );
  }
}