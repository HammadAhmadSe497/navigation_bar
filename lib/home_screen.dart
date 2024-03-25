
import 'package:flutter/material.dart';
import 'package:navigation_bar/screen_two.dart';
class HomeScreen extends StatefulWidget {
  static const String id = ' home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Navigation Bar '),
        backgroundColor: const  Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
          const  UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff764abc)
              ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                accountName: Text(' Sardar Hammad '),
                accountEmail: Text('Hammadahmad@gmail.com'),
            ),
            ListTile(
              leading: const  Icon(Icons.home),
                title: const Text(' Home  '),
              onTap: (){
                    Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('  Calculator '),
              onTap: (){

              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(' Logout '),
              onTap: (){

              },
            ),

          ],
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, ScreenTwo.id);
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => ScreenTwo())
                // );

              },
              child: const Text(' Screen 1 '),
            ),
          )
        ],
      ),
    );
  }
}
