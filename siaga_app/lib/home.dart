import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Home(),
        ]),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isFanOn = false;
  bool isAlarmOn = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 111,
                top: 78,
                child: Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("assets/siaga.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 191,
                top: 437,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isAlarmOn = !isAlarmOn;
                    });
                  },
                  child: Container(
                    width: 115,
                    height: 115,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 45),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: isAlarmOn ? Colors.blue : Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 100,
                        child: Text(
                          isAlarmOn ? 'ALARM\nON' : 'ALARM\nOFF',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 53,
                top: 437,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isFanOn = !isFanOn;
                    });
                  },
                  child: Container(
                    width: 115,
                    height: 115,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 45),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: isFanOn ? Colors.blue : Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 100,
                        child: Text(
                          isFanOn ? 'FAN\nON' : 'FAN\nOFF',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 101,
                top: 329,
                child: Container(
                  width: 158,
                  height: 93,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 14),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 3),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.translate(
                        offset: Offset(0, -10),
                        child: Text(
                          '0000',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 105,
                top: 180,
                child: Text(
                  'SIAGA',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2,
                  ),
                ),
              ),
              Positioned(
                left: 138,
                top: 290,
                child: Text(
                  'GAS VALUE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.60,
                  ),
                ),
              ),
              Positioned(
                left: 8,
                top: 49,
                child: Container(
                  width: 39,
                  height: 39,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 39,
                        height: 39,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("assets/setting.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
