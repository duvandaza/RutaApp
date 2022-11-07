import 'package:flutter/material.dart';
import 'package:ruta/src/models/rutas_model.dart';


class Ruta extends StatelessWidget {
  const Ruta({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final  size = MediaQuery.of(context).size;
    final List<Rutas> rutas = listRutas;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          const Text('Lista de rutas',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          const SizedBox(height: 20,),
          Container(
            height: size.height * 0.7,
            child: ListView.builder(
              itemCount: rutas.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: size.width * 0.7,
                  height: size.height * 0.1,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.black12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 2),
                        blurRadius: 3
                      )
                    ]
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 0.3,
                        child: const Image(image: AssetImage('assets/map.png')),
                      ),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text( rutas[index].name, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                          const SizedBox(height: 10, ),
                          Text('Distancia: ${rutas[index].distancia}', style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16))
                        ],
                      ))
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
