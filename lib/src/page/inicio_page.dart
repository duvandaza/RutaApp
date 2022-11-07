import 'package:flutter/material.dart';

import '../widget/home.dart';
import '../widget/ruta.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => InicioPageState();
}

class InicioPageState extends State<InicioPage> {

  int currentIndex = 0;
  final screens = [
    const Home(),
    const Ruta(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/user.png'),
                  ),
                ),
                const SizedBox(height: 20,),
                const Center(child: Text('Juan Palomino', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
                const SizedBox(height: 20,),
                ListTile(
                  title: const Text('Home', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
                  leading:  const Icon(Icons.home_rounded, size: 30, color: Colors.green,),
                  onTap: () {
                    setState(() { currentIndex = 0; });
                    Navigator.pop(context);
                  } 
                ),
                ListTile(
                  title: const Text('Rutas', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
                  leading:  const Icon(Icons.route_outlined, size: 30, color: Colors.green,),
                  onTap: () {
                    setState(() { currentIndex = 1; });
                    Navigator.pop(context);
                  } 
                ),
                ListTile(
                  title: const Text('Cerrar sesión', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
                  leading:  const Icon(Icons.logout_outlined, size: 30, color: Colors.red,),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, 'login', (route) => false);
                  } 
                ),
              ],
            )
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/user.png'),
                ),
                title: const Text('Juan Pablo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                subtitle: const Text('Palomino Daza', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
                trailing: Builder(
                  builder: (context) {
                    return InkWell(
                      onTap: () => Scaffold.of(context).openDrawer(), 
                      child: const Icon(Icons.menu, color: Colors.white, size: 35,)
                    );
                  }
                ),
              ),
            ),
            Expanded(
              child: screens[currentIndex],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          currentIndex: currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) => setState(() { currentIndex = value; }),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30,),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.route_outlined, size: 30,),
              label: 'Rutas'
            ),
          ],
        ),
      ),
    );
  }
}


