
import 'package:flutter/material.dart';
import 'package:islami_app/core/layout/layout_view.dart';
import 'package:islami_app/core/setting_provider.dart';
import 'package:islami_app/core/splash_view/splash_view.dart';
import 'package:islami_app/core/theme/application_theme.dart';
import 'package:islami_app/moduls/hadith/hadith_details.dart';
import 'package:islami_app/moduls/quran/quran_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => SettingsProvider(),

      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: 'Islami App',
      debugShowCheckedModeBanner: false,
      locale: Locale(provider.currentLanguage),
      themeMode:provider.currentThemeMode ,
      theme: ApplicationThemeManager.lightTheme,
      darkTheme: ApplicationThemeManager.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales:AppLocalizations.supportedLocales,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        LayOutView.routName: (context) => const LayOutView(),
        QuranDetails.routeName: (context) => const QuranDetails(),
        HadithDetailsView.routeName: (context) => const HadithDetailsView(),


      },

    );
  }
}
