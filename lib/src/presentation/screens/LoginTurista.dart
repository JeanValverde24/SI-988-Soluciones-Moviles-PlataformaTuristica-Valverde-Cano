import 'package:flutter/material.dart';

class LoginTurista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Turista"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Campo de correo electrónico
            TextField(
              decoration: InputDecoration(
                labelText: "Correo electrónico",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20), // Espacio entre campos

            // Campo de contraseña
            TextField(
              obscureText: true, // Para que la contraseña no sea visible
              decoration: InputDecoration(
                labelText: "Contraseña",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20), // Espacio entre el campo de contraseña y el botón

            // Botón de iniciar sesión
            ElevatedButton(
              onPressed: () {
                // Aquí irá la lógica de iniciar sesión
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text("Iniciar sesión"),
            ),
            SizedBox(height: 20),

            // Botón de crear cuenta
            TextButton(
              onPressed: () {
                // Aquí irá la lógica para crear cuenta
              },
              child: Text(
                "Crear cuenta",
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),

            // Botón de recuperar contraseña
            TextButton(
              onPressed: () {
                // Aquí irá la lógica para recuperar la contraseña
              },
              child: Text(
                "Recuperar contraseña",
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
