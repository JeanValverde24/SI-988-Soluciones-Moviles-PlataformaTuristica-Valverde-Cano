import 'package:flutter/material.dart';
import 'VistaPrincipal.dart'; // Importa la vista principal

class LoginTurista extends StatefulWidget {
  const LoginTurista({super.key});

  @override
  State<LoginTurista> createState() => _LoginTuristaState();
}

class _LoginTuristaState extends State<LoginTurista> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo de pantalla
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'images/background.png'), // Ruta de la imagen de fondo
                fit: BoxFit
                    .cover, // Asegura que la imagen cubra toda la pantalla
              ),
            ),
          ),
          // Ajustar el contenido cuando aparece el teclado y centrar en el área guinda
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Minimiza la altura ocupada
                children: [
                  const SizedBox(
                      height:
                          130), // Ajustamos para no tocar las ondas superiores

                  // Campo de correo electrónico
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Correo electrónico",
                      labelStyle: TextStyle(
                          color: Colors
                              .yellow), // Color de la etiqueta en amarillo
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.yellow), // Borde amarillo
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Borde blanco cuando no está activo
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.yellow), // Borde amarillo al enfocar
                      ),
                      prefixIcon: Icon(Icons.email,
                          color: Colors.yellow), // Icono en amarillo
                    ),
                    style: TextStyle(
                        color:
                            Colors.white), // Color del texto dentro de la caja
                  ),
                  const SizedBox(height: 20), // Espacio entre campos

                  // Campo de contraseña
                  const TextField(
                    obscureText: true, // Para que la contraseña no sea visible
                    decoration: InputDecoration(
                      labelText: "Contraseña",
                      labelStyle: TextStyle(
                          color: Colors
                              .yellow), // Color de la etiqueta en amarillo
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.yellow), // Borde amarillo
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Borde blanco cuando no está activo
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.yellow), // Borde amarillo al enfocar
                      ),
                      prefixIcon: Icon(Icons.lock,
                          color: Colors.yellow), // Icono en amarillo
                    ),
                    style: TextStyle(
                        color:
                            Colors.white), // Color del texto dentro de la caja
                  ),
                  const SizedBox(
                      height:
                          20), // Espacio entre el campo de contraseña y el botón

                  // Botón de iniciar sesión con redirección a VistaPrincipal
                  GestureDetector(
                    onTapDown: (_) {
                      setState(() {
                        isButtonPressed = true;
                      });
                    },
                    onTapUp: (_) {
                      setState(() {
                        isButtonPressed = false;
                      });
                      // Redirigir a la vista principal
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VistaPrincipal()),
                      );
                    },
                    child: AnimatedScale(
                      scale: isButtonPressed
                          ? 0.95
                          : 1.0, // Efecto de escala al tocar el botón
                      duration: const Duration(milliseconds: 100),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.redAccent,
                              Colors.yellow
                            ], // Degradado entre guinda y amarillo
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        child: const Text(
                          "Iniciar sesión",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white), // Texto más grande y blanco
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Botón de crear cuenta
                  TextButton(
                    onPressed: () {
                      // Aquí va la lógica de redirección a la vista de crear cuenta (si es necesario)
                    },
                    child: const Text(
                      "Crear cuenta",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.yellowAccent), // Texto amarillo
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
