import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<PageViewModel>getpages(){
    return[
      PageViewModel(
        image: Image.asset("assets/img_1.png"),
        titleWidget: Text(
          "Explore",style:
          TextStyle(
            color: Colors.pinkAccent,
            fontSize: 20,
          ),
        ),
        bodyWidget: Text("Discover events",
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 14,
        ),
        ),
        footer: Text("@Technozion'2022"),
      ),
      PageViewModel(
        image: Image.asset("assets/explore.png"),
        title: "Explore",
        body: "Discover all events",
        footer: Text("@Technozion'2022"),
      ),
      PageViewModel(
        image: Image.asset("assets/explore.png"),
        title: "Explore",
        body: "Discover all events",
        footer: Text("@Technozion'2022"),
      ),
    ];
  }
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Home()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(34, 31, 30, 5),
          body: Container(
            padding:  EdgeInsets.only(top: 50),
            child: IntroductionScreen(
              done: Text(
                "Done",
                style: TextStyle(
                  color: Colors.pinkAccent,
                ),
              ),
              globalFooter: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  child: const Text(
                    'Let\'s go right away!',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => _onIntroEnd(context),
                ),
              ),
              onDone: (){},
              pages: getpages(),
              globalBackgroundColor: Color.fromRGBO(34, 31, 30, 5),
              showNextButton: false,
            ),
          ),
        ),
      ),
    );
  }
}
