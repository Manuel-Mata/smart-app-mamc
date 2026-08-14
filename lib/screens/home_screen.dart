import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_app_mamc/data/mock_movied.dart';
import 'package:smart_app_mamc/widgets/movie_card.dart';

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
              //
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.red, size: 32),
                  SizedBox(width: 32),
                  Text(
                    'Mis películas favoritas',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                  ),
                ],
              ),

              // Listado de películas
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 18,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    final movie = mockMovies[index];
                    return FadeInUp(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: MovieCard(
                          movie: movie,
                          onSelect: () {
                            context.push('/detail', extra: movie);
                          },
                          autofocus: index == 0,
                        ),
                      ),
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
