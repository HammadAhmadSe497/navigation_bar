import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(' Navigation Bar '),
        backgroundColor: const Color(0xff764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Expanded(
          child: ListView.builder(
            itemCount: 100,
              itemBuilder: (context, index){
             return    ListTile(
                   leading : const  CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: const  Text(' Hammad Channel '),
                  onTap: (){
                    Navigator.pushNamed(context, ScreenTwo.id);
                  },
                );
              },
          ),
        )
        ],
      ),
    );
  }
}
