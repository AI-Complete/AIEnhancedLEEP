import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/home_screen.dart';
import 'navigation/router.dart';
import 'providers/app_state_provider.dart';
import 'utils/constants.dart';
import 'services/api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fugue AIEnhancedLEEP',
      debugShowCheckedModeBanner: false,
      theme: FugueTheme.theme,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: RoutePaths.Home,
      builder: (context, child) {
        return AppStateProvider(
          apiService: apiService,
          child: child,
        );
      },
    );
  }
}
