import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/app/cubit/locale_cubit.dart';
import 'package:portfolio/app/cubit/theme_cubit.dart';
import 'package:portfolio/bootstrap.dart';

void main() {
  bootstrap(
    () => MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocaleCubit(),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: const App(),
    ),
  );
}
