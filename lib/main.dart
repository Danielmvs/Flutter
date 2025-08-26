import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int contEsquerda = 0;
  int contDireita = 0;

  void decrementEsquerda() {
    setState(() {
      if (contEsquerda > 0) {
        contEsquerda--;
      }
    });
  }

  void incrementEsquerda() {
    setState(() {
      contEsquerda++;
    });
  }

  void decrementDireita() {
    setState(() {
      if (contDireita > 0) {
        contDireita--;
      }
    });
  }

  void incrementDireita() {
    setState(() {
      contDireita++;
    });
  }

  void zerar() {
    setState(() {
      contDireita = 0;
      contEsquerda = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/madeira2.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 62),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Time 1',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(width: 60),
              Text(
                'Time 2',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$contEsquerda',
                style: TextStyle(
                  fontSize: 110,
                  color: const Color.fromARGB(255, 238, 236, 236),
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(width: 100),
              Text(
                '$contDireita',
                style: TextStyle(
                  fontSize: 110,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: incrementEsquerda,
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 245, 55),
                        padding: const EdgeInsets.all(30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: Text(
                      '+1',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: decrementEsquerda,
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 247, 43, 43),
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: Text(
                      '-1',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(width: 106),
              Column(
                children: [
                  TextButton(
                    onPressed: incrementDireita,
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 245, 55),
                        padding: const EdgeInsets.all(30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: Text(
                      '+1',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: decrementDireita,
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 247, 43, 43),
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: Text(
                      '-1',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: zerar,
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 252, 252, 252),
                    padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                child: Text(
                  'Zerar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
