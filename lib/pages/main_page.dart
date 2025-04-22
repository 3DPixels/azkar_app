import 'package:azkar_app/pages/home.dart';
import 'package:azkar_app/pages/settings.dart';
import 'package:azkar_app/providers/local_cubit/local_cubit.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final _tabs = <Widget>[const Home(), const Settings()];

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalCubit, LocalState>(
      builder: (context, state) {
        return Scaffold(
          body: PageTransitionSwitcher(
            duration: const Duration(milliseconds: 700),
            transitionBuilder: (child, animation, secondaryAnimation) {
              return FadeThroughTransition(
                fillColor: Theme.of(context).scaffoldBackgroundColor,
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: child,
                ),
              );
            },
            child: _tabs[LocalCubit.get(context).mainIndex],
          ),
          bottomNavigationBar: NavigationBar(
            selectedIndex: LocalCubit.get(context).mainIndex,
            onDestinationSelected: (index) {
              LocalCubit.get(context).changeMainIndex(index);
            },
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
