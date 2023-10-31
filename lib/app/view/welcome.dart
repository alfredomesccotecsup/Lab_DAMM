import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class AnimatedMenuOption extends StatefulWidget {
  final IconData icon;
  final String text;
  final Function onPressed;

  AnimatedMenuOption({required this.icon, required this.text, required this.onPressed});

  @override
  _AnimatedMenuOptionState createState() => _AnimatedMenuOptionState();
}

class _AnimatedMenuOptionState extends State<AnimatedMenuOption> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {
          widget.onPressed();
        },
        child: Column(
          children: [
            Icon(
              widget.icon,
              color: isHovered ? Colors.yellow : Colors.white,
            ),
            SizedBox(height: 8),
            Text(
              widget.text,
              style: TextStyle(
                color: isHovered ? Colors.yellow : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Row(
        children: <Widget>[
          Container(
            width: 200,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedMenuOption(
                  icon: Icons.home,
                  text: 'Inicio',
                  onPressed: () {
                    // Acción cuando se presiona la opción de "Inicio"
                  },
                ),
                AnimatedMenuOption(
                  icon: Icons.account_circle,
                  text: 'Perfil',
                  onPressed: () {
                    // Acción cuando se presiona la opción de "Perfil"
                  },
                ),
                AnimatedMenuOption(
                  icon: Icons.settings,
                  text: 'Configuración',
                  onPressed: () {
                    // Acción cuando se presiona la opción de "Configuración"
                  },
                ),
                AnimatedMenuOption(
                  icon: Icons.favorite,
                  text: 'Favoritos',
                  onPressed: () {
                    // Acción cuando se presiona la opción de "Favoritos"
                  },
                ),
                AnimatedMenuOption(
                  icon: Icons.mail,
                  text: 'Mensajes',
                  onPressed: () {
                    // Acción cuando se presiona la opción de "Mensajes"
                  },
                ),
                AnimatedMenuOption(
                  icon: Icons.photo,
                  text: 'Galería',
                  onPressed: () {
                    // Acción cuando se presiona la opción de "Galería"
                  },
                ),
                AnimatedMenuOption(
                  icon: Icons.play_arrow,
                  text: 'Reproducir música',
                  onPressed: () {
                    // Acción cuando se presiona la opción de "Reproducir música"
                  },
                ),
                AnimatedMenuOption(
                  icon: Icons.local_cafe,
                  text: 'Cafeterías cercanas',
                  onPressed: () {
                    // Acción cuando se presiona la opción de "Cafeterías cercanas"
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.5),
                          blurRadius: 8.0,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/imgtarea.png',
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '¡Bienvenido!',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tu mejor experiencia comienza aquí',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      // Acción cuando se presiona el botón
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 40),
                      ),
                    ),
                    child: Text(
                      'Empezar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '¿Ya tienes una cuenta?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Acción cuando se presiona el botón de "Iniciar sesión"
                    },
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'O inicia sesión con',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          // Acción cuando se presiona el botón de "Google"
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 12),
                          ),
                        ),
                        child: Text(
                          'Google',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      ElevatedButton(
                        onPressed: () {
                          // Acción cuando se presiona el botón de "Facebook"
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 12),
                          ),
                        ),
                        child: Text(
                          'Facebook',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Nombre',
                        hintText: 'Ingresa tu nombre',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Correo Electrónico',
                        hintText: 'Ingresa tu correo',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Acción cuando se presiona el botón
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 40),
                        ),
                      ),
                      child: Text(
                        'Enviar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          'assets/image1.png',
                          width: 120,
                          height: 120,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          'assets/image2.png',
                          width: 120,
                          height: 120,
                        ),
                      ),
                    ],
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

