import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegistrarDenuncia extends StatefulWidget {
  @override
  _RegistrarDenunciaState createState() => _RegistrarDenunciaState();
}

class _RegistrarDenunciaState extends State<RegistrarDenuncia> {
  File? _selectedImage;

  Future<void> _selectImageFromGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
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
              decoration: InputDecoration(labelText: 'Tipo de Denuncia'),
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
