import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/movies/presentation/components/see_more_item.dart';
import 'package:movies_app/movies/presentation/screens/movie_detail_screen.dart';

import '../../../core/services/services_locator.dart';
import '../../../core/utils/enums.dart';
import '../../../generated/l10n.dart';
import '../controllers/movies_bloc.dart';
import '../controllers/movies_event.dart';
import '../controllers/movies_state.dart';

class PopularMovieScreen extends StatelessWidget {
  const PopularMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          S
              .of(context)
              .popular_movie,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => sl<MoviesBloc>()..add(GetPopularMoviesEvent()),
        child: BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            switch(state.popularState) {
              case RequestState.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case RequestState.loaded:
                return FadeIn(
                  duration: const Duration(milliseconds: 500),
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemCount: state.popularMovies.length,
                    itemBuilder: (context, index) {
                      final movie = state.popularMovies[index];
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailScreen(id: movie.id)));
                        },
                          child: SeeMoreItem(item: movie),
                      );
                    },
                  ),
                );
              case RequestState.error:
                return Container();
            }
          },
        ),
      ),
    );
  }
}
