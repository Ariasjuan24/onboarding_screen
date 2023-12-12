import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:lottie/lottie.dart';
import 'package:onboardingscreen/card_planet.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fluter demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
        );
  }
}


class Home extends StatelessWidget {
  Home({super.key});

  final data = [
    CardPlanetData(
      title: "Instituto Tecnológico de Celaya", 
      subtitle: "El Instituto Tecnológico de Celaya es una institución de educación superior localizado en la ciudad de Celaya, Gto. Es dependiente, al igual que varios institutos tecnológicos, orgánica y funcionalmente del Gobierno Federal.", 
      image: const AssetImage("assets/images/itcelatya.png"), 
      backgroundColor: Color.fromARGB(255, 19, 109, 52),
      subtitleColor: Colors.pink, 
      titleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/ondas.json"),
      ),
      CardPlanetData(
      title: "imagine", 
      subtitle: "aaaaaasklasjakl", 
      image: AssetImage("assets/images/ingeSistemas.png"), 
      backgroundColor: Colors.white, 
      subtitleColor: Colors.purple, 
      titleColor: Color.fromRGBO(0, 10, 56, 1)
      ),
      CardPlanetData(
      title: "stargaze", 
      subtitle: "the sky dome is a beautiful...", 
      image: AssetImage("assets/images/DptoSistemas.png"), 
      backgroundColor: Color.fromRGBO(71, 59, 117, 1), 
      subtitleColor: Colors.yellow, 
      titleColor: Colors.white
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}