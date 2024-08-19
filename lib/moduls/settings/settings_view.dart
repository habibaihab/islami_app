import 'dart:developer';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/setting_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  final List<String> _laguages = [
    "English",
    "عربي"
  ];
  final List<String> _theme =[
    "Dark",
    "Light",
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
    var provider = Provider.of<SettingsProvider> (context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0 , vertical: 70.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
           lang.language,style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 15,),
      CustomDropdown<String>(
        hintText: 'Select job role',
        items: _laguages,
        initialItem: provider.currentLanguage=="en"?_laguages[0] :
        _laguages[1],
        onChanged: (value) {
          if(value == "English"){
            provider.changeCurrentLanguage("en");
          }if(value == "عربي"){
            provider.changeCurrentLanguage("ar");
          }
          log('changing value to: $value');
        },
        decoration: CustomDropdownDecoration(
          closedFillColor: provider.isDark() ? Color(0xFF141A2E) : Colors.white,
          closedSuffixIcon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: provider.isDark()? theme.primaryColorDark : theme.primaryColor,
          ),
          expandedFillColor: provider.isDark() ? Color(0xFF141A2E) : Colors.white,
          expandedSuffixIcon: Icon(
            Icons.keyboard_arrow_up_rounded,
            color: provider.isDark()? theme.primaryColorDark : theme.primaryColor,
          ),
        ),

      ),
          SizedBox(height: 40,),
          Text(
            lang.theme_mode,style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 15,),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: _theme,
            initialItem:_theme[0],
            onChanged: (value) {
              if(value == "Dark"){
                provider.changeCurrentThemeMode(ThemeMode.dark);
              }
              if(value == "Light"){
                provider.changeCurrentThemeMode(ThemeMode.light);
              }
              log('changing value to: $value');
            },
            decoration: CustomDropdownDecoration(
              closedFillColor: provider.isDark() ? Color(0xFF141A2E) : Colors.white,
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: provider.isDark()? theme.primaryColorDark : theme.primaryColor,
              ),
              expandedFillColor:provider.isDark() ? Color(0xFF141A2E) : Colors.white,
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color: provider.isDark()? theme.primaryColorDark : theme.primaryColor,
              ),

            ),
          )

        ],
      ),
    );
  }
}
