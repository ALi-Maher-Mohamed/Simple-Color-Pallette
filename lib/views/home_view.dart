import 'package:color_screen/component.dart';
import 'package:color_screen/views/color_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft, colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.5),
              ]),
              borderRadius: BorderRadius.circular(99),
            ),
            child: const Text(
              'Colors Screen ',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      body: GridView.count(
          crossAxisCount: 3,
          children: colorList
              .map((color) => GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ColorView(
                            color: color,
                          );
                        },
                      ));
                    },
                    child: Container(
                      // padding: EdgeInsets.all(5),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                    ),
                  ))
              .toList()),
    );
  }
}
