import 'package:azkar_app/pages/main_page.dart';
import 'package:azkar_app/providers/local_cubit/local_cubit.dart';
import 'package:azkar_app/services/cache_helper.dart';
import 'package:azkar_app/services/notification_service.dart';
import 'package:azkar_app/utils/dark_theme.dart';
import 'package:azkar_app/utils/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService().initialize();
  await CacheHelper.init(); //cache services
  //To prevent app from landscape orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(const AzkarApp()));
}

class AzkarApp extends StatelessWidget {
  const AzkarApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LocalCubit()..getSavedThemeMode()),
      ],
      child: BlocBuilder<LocalCubit, LocalState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Azkar App',
            locale: Locale('ar'),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: [Locale('ar')],
            theme: lightTheme(),
            darkTheme: darkTheme(),
            themeMode: LocalCubit.currentTheme,
            home: const MainPage(),
          );
        },
      ),
    );
  }
}
