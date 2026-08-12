import 'package:flutter/material.dart';

class Movie {
  final String title;
  final String year;
  final String genre;
  final String description;
  final double rating;
  final Color color1;
  final Color color2;
  final IconData icon;
  final String porterUrl;

  Movie({
    required this.title,
    required this.year,
    required this.genre,
    required this.description,
    required this.rating,
    required this.color1,
    required this.color2,
    required this.icon,
    required this.porterUrl,
  });
}
