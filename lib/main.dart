import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFFFF2F2),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'I am Korede,       \nA Flutter Dev',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Color(0xff0D152F),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/profile.jpg'),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color(0xff0D152F),
                height: 1,
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: RichText(
                    text: TextSpan(
                        text: 'About me:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xff0D152F),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                '  Junior Software Engineer, B. SC. in Computer Science passionate '
                                'about Mobile Programming and problem-solving with a good experience in '
                                'flutter development [dart, OOP, getX, get].',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              color: Color(0xff0D152F).withOpacity(0.8),
                            ),
                          ),
                        ]),
                  )),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Column(
                  children: [
                    CardDetailsWidget(
                      label: 'My Phone:',
                      icon: Icons.phone,
                      title: '+2349078731359',
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    CardDetailsWidget(
                      label: 'My Mail:',
                      icon: Icons.mail,
                      title: 'Taojag246@gmail.com',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardDetailsWidget extends StatelessWidget {
  const CardDetailsWidget({
    Key key,
    this.title,
    this.icon,
    this.label,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xff0D152F)),
        ),
        SizedBox(
          height: 7.0,
        ),
        Container(
          height: 50.0,
          width: 300,
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: Color(0xff0D152F),
                    size: 15.0,
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0D152F),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
