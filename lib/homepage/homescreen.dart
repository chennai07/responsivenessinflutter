import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF4F7FE),
        appBar: AppBar(
          backgroundColor: Color(0xffF4F7FE),
          title: const Text(
            'monday,22',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: const Icon(
            Icons.menu,
            size: 30,
          ),
          actions: const [
            Icon(
              Icons.notifications,
              size: 30,
            ),
          ],
          centerTitle: true,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Discover your.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(
                          text: '\nDream job.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here...',
                    border: InputBorder.none, // Remove default border
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Image.asset('assets/icon.png'),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Show All',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/google.png'),
                Image.asset('assets/spotify.png')
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Jobs',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'Show All',
                    style: TextStyle(fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const Column(
        children: [
          Card(
            color: Colors.white,
            child: ListTile(
                leading: Image(image: AssetImage('assets/figmaicon.png')),
                title: Text('UI/UX Designer'),
                subtitle: Text('figma')
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
                leading: Image(image: AssetImage('assets/spoit.png')),
                title: Text('Visual Designer'),
                subtitle: Text('Spotify'),
            ),
          ),
        ],
      )
    ]),
        );
  }
}
