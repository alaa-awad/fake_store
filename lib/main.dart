import 'package:fake_store/core/dio/dio_helper.dart';
import 'package:fake_store/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/bloc_observer.dart';
import 'core/dio/cache_helper.dart';
import 'core/injection_container.dart' as di;
import 'core/localization/app_local.dart';
import 'core/var.dart';
import 'core/widget/decision_home_screen.dart';
import 'features/auth/presentation/cubit/user_cubit.dart';
import 'features/product/presentation/cubit/product_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await DioHelper.init(null);
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  decisionHomeScreen();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
       providers: [
        BlocProvider( create: (BuildContext context) => di.sl<ProductCubit>()..getAllCategoriesCubit()..getAllProductsCubit(),),
        BlocProvider( create: (BuildContext context) => di.sl<UserCubit>()),
       ],
        child: MaterialApp(
          title: 'Fake Story',
          supportedLocales: const [
            Locale('en', ''),
            Locale('ar', ''),
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            AppLocale.delegate,
          ],
          localeResolutionCallback: (currentLocale, supportedLocale) {
            if (currentLocale != null) {
              for (Locale locale in supportedLocale) {
                if (currentLocale.languageCode == locale.languageCode) {
                  return currentLocale;
                }
              }
            }
            return supportedLocale.first;
            //
          },
          locale: const Locale("en", ''),
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          home: home,
        ));
  }
}