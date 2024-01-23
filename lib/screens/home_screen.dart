import 'package:flutter/material.dart';
import 'package:practica_2/main.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text('Hola Mundo'),
          elevation: 0,
        ),
        body: PageView(
          children: [
            CustomScreen(color: Colors.green),
            CustomScreen(color: Colors.pink),
            CustomScreen(color: Colors.amber),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (index) => (){
              currentPage=index;
              setState(() => {});
            },

          backgroundColor: const Color.fromARGB(204, 0, 0, 0),
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.verified_user), label: "user")

          ],

        ), 
      );
  }
}
class CustomScreen extends StatelessWidget{ 
  final Color color;

  const CustomScreen({super.key, required this.color});

  
  @override
  Widget build(BuildContext context){
    return Container(
      color: color,
      child: Center(
        child: Text('Custom Screen'),
      ),
    );
  }
}