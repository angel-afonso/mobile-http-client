import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart' as localization;
import 'package:http_client/config/themes/bloc/theme_bloc.dart';
import 'package:http_client/modules/home/screens/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget _materialApp(ThemeState state) {
    return MaterialApp(
      localizationsDelegates: [
        localization.AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('en', ''),
      ],
      title: 'Flutter Demo',
      theme: state.theme,
      home: SafeArea(
        child: Home(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) => _materialApp(state),
      ),
    );
  }
}
