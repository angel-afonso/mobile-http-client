import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_client/config/themes/app_themes.dart';
import 'package:http_client/config/themes/bloc/theme_bloc.dart';
import 'package:http_client/modules/home/widgets/request_panel.dart';

class Home extends StatelessWidget {
  void _toggleTheme(context) {
    final state = ThemeBloc.of(context).state.appTheme;
    ThemeBloc.of(context).add(
        ThemeChanged(state == AppTheme.Light ? AppTheme.Dark : AppTheme.Light));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: IconButton(
          icon: Icon(
            BlocProvider.of<ThemeBloc>(context).state.appTheme == AppTheme.Light
                ? Icons.wb_sunny_rounded
                : Icons.nights_stay_rounded,
          ),
          onPressed: () => _toggleTheme(context),
        ),
      ),
      body: RequestPanel(),
    );
  }
}
