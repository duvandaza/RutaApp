import 'package:flutter/material.dart';

class InputLogin extends StatelessWidget {
  const InputLogin({
    Key? key, required this.titulo, required this.hintText, required this.tipo, required this.password, 
  }) : super(key: key);

  final String titulo;
  final String hintText;
  final TextInputType tipo ;
  final bool password;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titulo, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
        const SizedBox(height: 8,),
        SizedBox(
          height: size.height * 0.06,
          child: TextFormField(
            autocorrect: false,
            obscureText: password,
            keyboardType:tipo,
            decoration:  InputDecorations.authInputDecoration(hintText: hintText),
          ),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}

class InputDecorations {

  static InputDecoration authInputDecoration({
    required String hintText,
  }) {
    return InputDecoration(
      filled: true,
      hintText: hintText,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black26,
        )
      )
    );
  }
}