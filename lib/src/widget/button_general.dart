import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key, required this.navigator, required this.titulo, required this.ancho,
  }) : super(key: key);

  final Function navigator;
  final String titulo;
  final double ancho;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.07,
      width: size.width * ancho,
      child: MaterialButton(
        onPressed: () {
          navigator();
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 0,
        color:  Colors.black,
        child: Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),),
      ),
    );
  }
}