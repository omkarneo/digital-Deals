import 'package:digital_deals/presentation/dashboard/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Navigation/app_router.dart';
import 'Navigation/route_paths.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => DashboardBloc())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutePaths.splashscreen,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
