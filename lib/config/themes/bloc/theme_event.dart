part of 'package:http_client/config/themes/bloc/theme_bloc.dart';

abstract class ThemeEvent extends Equatable {}

class ThemeChanged extends ThemeEvent {
  ThemeChanged(this.theme);

  final AppTheme theme;

  @override
  List<Object> get props => [theme];
}
