import 'package:flutter/material.dart';

void main() {
  // Inicialización para plugins como SharedPreferences
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const HangmanApp());
}

// Widget Raíz (StatelessWidget)
class HangmanApp extends StatelessWidget {
  const HangmanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "El Ahorcado",
      // Desactivar el banner de "DEBUG"
      debugShowCheckedModeBanner: false,

      // Tema oscuro para el contraste
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.black,
      ),

      // Pantalla Inicial
      home: const GameScreen(),
    );
  }
}
