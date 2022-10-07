import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:voice/screens/norma_abnormal_screen.dart';
import 'package:voice/screens/text_output.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 120.0),
                    child: Text(
                      'CHILD VOICE TO TEXT',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 85, 55, 255)),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => TextOutput())));
                    },
                    child: Text(
                      'Text Output',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 18))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => NormalAbnormal())));
                    },
                    child: Text(
                      'Normal/ Abnormal',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 18))),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
