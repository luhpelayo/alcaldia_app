import 'package:alcaldia_app/vistas/lista_denuncias.dart';
import 'package:alcaldia_app/vistas/registrar_denuncia.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PrincipalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Principal'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqaGR3HG3PtT2kuCLonVEyz546xFobU0jY_7CKxMW9&s',
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Se encontraros acumulo de basuras en la zona del 6to anillo',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyJEO1GbYfB0TlyJF-XBwGZKHZ3DEaC5kHvxGTOdd4&s',
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'DArboles caidos por la fuerte lluvia y falta de limpieza',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Registrar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Denuncias',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          // Aquí puedes agregar la lógica para manejar la navegación del menú
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegistrarDenuncia(),
              ),
            );
          }
          if (index == 2) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DenunciasScreen(),
      ),
    );
  }
        },
      ),
    );
  }
}
  class StaticRegisterView extends StatelessWidget {
    Future _selectImageFromGallery() async {
  final picker = ImagePicker();
  final pickedImage = await picker.getImage(source: ImageSource.gallery);

  if (pickedImage != null) {
    // Aquí puedes realizar la lógica para manejar la imagen seleccionada
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro Noticias'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButtonFormField<String>(
              items: [
                DropdownMenuItem(
                  value: 'familiar',
                  child: Text('Familiar'),
                ),
                DropdownMenuItem(
                  value: 'vecino',
                  child: Text('Vecino'),
                ),
                DropdownMenuItem(
                  value: 'otro',
                  child: Text('Otro'),
                ),
              ],
              onChanged: (value) {
                // Aquí puedes agregar la lógica para manejar la selección del dropdown
              },
              decoration: InputDecoration(labelText: 'Tipo de Registro'),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(
                  6,
                  (index) => GestureDetector(
                    onTap: () {
                      // Lógica para manejar la selección de una imagen de la galería
                    },
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage('https://via.placeholder.com/150'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Escribir mensaje',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
             IconButton(
  icon: Icon(Icons.image),
  onPressed: _selectImageFromGallery,
),

                IconButton(
                  icon: Icon(Icons.record_voice_over),
                  onPressed: () {
                    // Lógica para grabar un audio
                  },
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Lógica para enviar el mensaje
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


