import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laboratorio2_app/screens/currency_converter_screen.dart';
import 'package:laboratorio2_app/screens/menu_screen.dart';
import 'package:laboratorio2_app/screens/news_screen.dart';
import 'package:laboratorio2_app/screens/task_list_screen.dart';

void main() => runApp(const MyApp());

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MenuScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'tareas',
          builder: (BuildContext context, GoRouterState state) {
            return TaskListScreen();
          },
        ),
        GoRoute(
          path: 'monedas',
          builder: (BuildContext context, GoRouterState state) {
            return CurrencyConverterScreen();
          },
        ),
        GoRoute(
          path: 'noticias',
          builder: (BuildContext context, GoRouterState state) {
            return NewsScreen();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
