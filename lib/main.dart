import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sala7ly/layout/layout_screen.dart';
import 'package:sala7ly/modules/Drawer/profile.dart';
import 'package:sala7ly/modules/login/first_login.dart';
import 'package:sala7ly/modules/screens/home/animation_logo_screen/logo_screen.dart';
import 'package:sala7ly/modules/screens/notification.dart';
import 'package:sala7ly/modules/setting/ssettingss.dart';
import 'package:sala7ly/modules/login/login.dart';
import 'package:sala7ly/modules/register/register.dart';
import 'package:sala7ly/modules/res_pass/congrate.dart';
import 'package:sala7ly/modules/res_pass/new_password/newPass.dart';
import 'package:sala7ly/modules/res_pass/otp_screen.dart';
import 'package:sala7ly/modules/screens/home/home_screen.dart';
import 'package:sala7ly/shared/bloc.dart';
import 'package:sala7ly/shared/cubit/cubit.dart';
import 'package:sala7ly/shared/cubit/state.dart';
import 'package:sala7ly/shared/network/local/cache_helper.dart';
import 'package:sala7ly/shared/styles/theme.dart';
import 'modules/setting/cubit/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  await CacheHelper.init();
  await EasyLocalization.ensureInitialized();

  bool isDark = (await CacheHelper.getData(key: 'isDark')) ?? false;

  runApp(EasyLocalization(
    supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
    fallbackLocale: const Locale('en', 'US'),
    path: 'assets/translate',
    child: MyApp(isDark: isDark),
  ));
}

class MyApp extends StatelessWidget {
  final bool isDark;

  const MyApp({Key? key, required this.isDark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SettingsCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) =>
          AppCubit()..changeAppMode(),
          //
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: AppCubit.get(context)?.isDark ?? false
                ? ThemeMode.light
                : ThemeMode.dark,
            home:LogoScreen (),
          );
        },
      ),
    );
  }
}
