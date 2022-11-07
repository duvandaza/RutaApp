import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final  size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Home', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        SizedBox(
          height: size.height * 0.4,
          width: double.infinity,
          child: const Image(
            image: AssetImage('assets/location.png',),
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}