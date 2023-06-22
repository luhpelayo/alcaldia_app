import 'package:alcaldia_app/vistas/principal_screen.dart';
import 'package:alcaldia_app/vistas/registrar_page.dart';
import 'package:flutter/material.dart';



class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de sesión'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            'https://static.eldeber.com.bo//Files/Sizes/2021/5/3/imegeninstitucional-alcalda-santa-cruz-de-la-sierra-creativo_492523157_760x520.jpg',
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nombre de usuario'),
                ),
                SizedBox(height: 16),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Contraseña'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrincipalScreen(),
                      ),
                    );
                  },
                  child: Text('Iniciar sesión'),
                ),
               SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
                  child: Text('Registrar'),
                ),
              ],

            ),
          ),
        ],
      ),
    );
  }
}
