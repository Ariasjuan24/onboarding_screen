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
      subtitle: "El Instituto Tecnológico de Celaya es una institución de educación superior localizado en la ciudad de Celaya, Gto.", 
      image: const AssetImage("assets/images/itcelatya.png"), 
      backgroundColor: Color.fromARGB(255, 19, 109, 52),
      subtitleColor: const Color.fromARGB(255, 255, 255, 255), 
      titleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/ondas.json"),
      ),
      CardPlanetData(
      title: "Ing. Sistemas Computacionales", 
      subtitle: "Integra campos de ciencias de la computación para desarrollar hardware y software", 
      image: AssetImage("assets/images/inggsis2.png"), 
      backgroundColor: const Color.fromARGB(255, 0, 0, 0), 
      subtitleColor: const Color.fromARGB(255, 255, 255, 255), 
      titleColor: Color.fromRGBO(37, 146, 42, 1),
      background: LottieBuilder.asset("assets/animation/puntos.json"),
      ),
      CardPlanetData(
      title: "campus 2", 
      subtitle: "Podemos encontrar el Depdartamento de Sistemas y Computación en Campus 2", 
      image: AssetImage("assets/images/DptoSistemas.png"), 
      backgroundColor: Color.fromRGBO(250, 250, 250, 1), 
      subtitleColor: Color.fromARGB(255, 0, 0, 0), 
      titleColor: Color.fromARGB(255, 60, 142, 23),
      background: LottieBuilder.asset("assets/animation/puntos.json")
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemBuilder: (int index) {
          return CardPlanet(data: data[index % data.length]); //Se aplicó el operador de modulo al indice en el acceso a la lista
        },
      ),
    );
  }
}