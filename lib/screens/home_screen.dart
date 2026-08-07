import 'package:flutter/material.dart';
import 'package:smart_app/data/mock_movied.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 48, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Titulo
              Row(
                children: [
                  Icon(Icons.favorite, size: 32, color: Colors.red),
                  SizedBox(width: 12),
                  Text(
                    'Mis Peliculas Favoritas',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                  ),
                ],
              ),

              //Listado de peliculas
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: mockMovies.length, // Número de películas
                  itemBuilder: (context, index) {
                    final movie = mockMovies[index];
                    return MovieCard(
                      movie: movie,
                      onSelect: () {
                        // Handle movie selection
                      },
                      autofocus: false,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
