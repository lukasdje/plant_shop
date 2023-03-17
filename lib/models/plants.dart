// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Plant {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Plant({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.id,
    required this.color,
  });
}

List<Plant> plants = [
  Plant(
      image: 'assets/images/plant-1.png',
      title: 'Aloe vera',
      description: 'Planta para jardim chique',
      price: 15,
      size: 20,
      id: 1,
      color: const Color(0xFF3D82AE)),
  Plant(
      image: 'assets/images/plant-2.png',
      title: 'Buxo',
      description: 'Planta para jardim chique',
      price: 15,
      size: 20,
      id: 1,
      color: const Color.fromARGB(255, 163, 174, 61)),
  Plant(
      image: 'assets/images/plant-3.png',
      title: 'Mini cactu rosa',
      description: 'Planta para jardim chique',
      price: 15,
      size: 20,
      id: 1,
      color: const Color.fromARGB(255, 134, 174, 61)),
  Plant(
      image: 'assets/images/plant-4.png',
      title: 'Bonsai',
      description: 'Planta para jardim chique',
      price: 15,
      size: 20,
      id: 1,
      color: const Color.fromARGB(255, 174, 61, 104)),
  Plant(
      image: 'assets/images/plant-5.png',
      title: 'Pilosocereus magnificus',
      description: 'Planta para jardim chique',
      price: 15,
      size: 20,
      id: 1,
      color: const Color.fromARGB(255, 61, 106, 174)),
  Plant(
      image: 'assets/images/plant-6.png',
      title: 'Facheiro',
      description: 'Planta para jardim chique',
      price: 15,
      size: 20,
      id: 1,
      color: const Color.fromARGB(255, 174, 134, 61)),
  Plant(
      image: 'assets/images/plant-7.png',
      title: 'Haworthia',
      description: 'Planta para jardim chique',
      price: 15,
      size: 20,
      id: 1,
      color: const Color.fromARGB(255, 174, 106, 61)),
  Plant(
      image: 'assets/images/plant-8.png',
      title: 'Mammillaria',
      description: 'Planta para jardim chique',
      price: 15,
      size: 20,
      id: 1,
      color: const Color.fromARGB(255, 95, 61, 174)),
  Plant(
      image: 'assets/images/plant-9.png',
      title: 'Orelha-de-coelho',
      description: 'Planta para jardim chique',
      price: 15,
      size: 20,
      id: 1,
      color: const Color.fromARGB(255, 174, 61, 61)),
  Plant(
      image: 'assets/images/plant-10.png',
      title: 'Camedória-elegante',
      description: 'Planta para jardim chique',
      price: 15,
      size: 20,
      id: 1,
      color: const Color.fromARGB(255, 61, 174, 165)),
];
