import 'package:flutter/material.dart';
import 'package:movies_app/movies/presentation/screens/movies_screen.dart';
import 'package:movies_app/tvs/presentation/screens/tv_Screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 16),
            indicatorSize: TabBarIndicatorSize.tab,
            splashBorderRadius: BorderRadius.circular(50),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50), // Creates border
              color: Colors.amber,
            ),
            tabs: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.movie_filter_outlined,
                  size: 32,
                ),
              ),
              Icon(
                Icons.live_tv,
                size: 32,
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MoviesScreen(),
            TvScreen()
          ],
        ),
      ),
    );
  }
}
