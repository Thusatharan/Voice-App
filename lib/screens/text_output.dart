import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextOutput extends StatelessWidget {
  const TextOutput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Text Output',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 54, 54, 54)),
                ),
                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(157, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                        'egwegwegwe weg weg weg weg wegwegwer wr gwrgwe rwrgwr gwrg w g'),
                  ),
                ),
              ],
            ))));
  }
}
