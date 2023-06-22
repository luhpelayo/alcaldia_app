import 'package:flutter/material.dart';

class DenunciasScreen extends StatelessWidget {
List<Denuncia> listaDenuncias = [
  Denuncia(
    imagenUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV0Vs7Is0t8qygZVH6argUTpQP8ETTlgvUw7A4knhywQ&s',
    numeroDenuncia: 1,
    descripcion: 'Descripción de la denuncia 1',
    categoria: 'Categoría 1',
    fecha: '01/01/2023',
    hora: '10:00 AM',
  ),
  Denuncia(
    imagenUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOcKXPvneReacTgqpfncOjymx4G6P1sXcRSHI9SzhXnw&s',
    numeroDenuncia: 2,
    descripcion: 'Descripción de la denuncia 2',
    categoria: 'Categoría 2',
    fecha: '02/01/2023',
    hora: '11:00 AM',
  ),
    Denuncia(
    imagenUrl: 'https://media.istockphoto.com/id/482911526/es/foto/de-los-da%C3%B1os-debidos-alem%C3%A1n-oak.jpg?s=612x612&w=0&k=20&c=ZYwrKXyHFbxlSzsIUBCjtcjrVsdkhi6UlKLesAe-QTI=',
    numeroDenuncia: 2,
    descripcion: 'Descripción de la denuncia 3',
    categoria: 'Categoría 2',
    fecha: '02/01/2023',
    hora: '14:00 AM',
  ),
  // Agrega más denuncias según sea necesario
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Denuncias'),
      ),
      body: ListView.builder(
        itemCount: listaDenuncias.length,
        itemBuilder: (context, index) {
          final denuncia = listaDenuncias[index];
          return ListTile(
  leading: Container(
    width: 100,
    height: 100,
    child: Image.network(
      denuncia.imagenUrl,
      fit: BoxFit.cover,
    ),
  ),
  title: Text('Denuncia ${denuncia.numeroDenuncia}'),
  subtitle: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Descripción: ${denuncia.descripcion}'),
      Text('Categoría: ${denuncia.categoria}'),
      Text('Fecha: ${denuncia.fecha}'),
      Text('Hora: ${denuncia.hora}'),
    ],
  ),
);

        },
      ),
    );
  }
}

class Denuncia {
  final String imagenUrl;
  final int numeroDenuncia;
  final String descripcion;
  final String categoria;
  final String fecha;
  final String hora;

  Denuncia({
    required this.imagenUrl,
    required this.numeroDenuncia,
    required this.descripcion,
    required this.categoria,
    required this.fecha,
    required this.hora,
  });
}
