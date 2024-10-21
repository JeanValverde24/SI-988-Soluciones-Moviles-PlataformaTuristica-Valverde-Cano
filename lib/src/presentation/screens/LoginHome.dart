import 'package:flutter/material.dart';
import 'LoginTurista.dart'; // Importa tu archivo LoginTurista

class LoginHome extends StatefulWidget {
  const LoginHome({super.key});

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  bool isPressedTurista = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'), // Ruta de la imagen
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Centrar el contenido
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Botón "Hola Turista" con redirección
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginTurista()),
                    );
                  },
                  child: AnimatedScale(
                    scale: isPressedTurista ? 0.9 : 1.0, // Efecto de escala
                    duration: Duration(milliseconds: 100),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.yellow[700], // Color del botón
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 5, // Animación flotante
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Text(
                        "Hola Turista",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.redAccent[700],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
