import 'package:flutter/material.dart';

Widget buildGoogleMapEmbed() {
  return Container(
    color: const Color(0xFFF0EDF7),
    alignment: Alignment.center,
    padding: const EdgeInsets.all(18),
    child: const Text(
      'La carte interactive est disponible dans la version Web. Utilisez le bouton « Ouvrir l’itinéraire » sur mobile.',
      textAlign: TextAlign.center,
      style: TextStyle(color: Color(0xFF4D4B52)),
    ),
  );
}
