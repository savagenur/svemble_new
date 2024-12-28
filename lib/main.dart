import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:svemble_new/auth/viewmodels/auth/auth_state.dart';
import 'package:svemble_new/auth/viewmodels/auth/auth_viewmodel.dart';
import 'package:svemble_new/auth/views/SignIn/signin_screen.dart';
import 'package:svemble_new/core/utils/loader.dart';
import 'package:svemble_new/firebase_options.dart';
import 'package:svemble_new/routes.dart';
import 'package:svemble_new/screens/Home/home_screen.dart';
import 'package:svemble_new/screens/Main/main_screen.dart';
import 'package:svemble_new/size_config.dart';
import 'package:svemble_new/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: const SvembleNew()));
}

final navigatorKey = GlobalKey<NavigatorState>();

class SvembleNew extends ConsumerWidget {
  const SvembleNew({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig.init(context);

    final authViewModel = ref.watch(authViewmodelProvider);
    return MaterialApp(
      navigatorKey: navigatorKey,
      builder: FlutterSmartDialog.init(),
      debugShowCheckedModeBanner: false,
      title: 'Svemble - Интернет магазин!',
      theme: theme(),
      onGenerateRoute: AppRoute().onGenerateRoute,
      home: MainScreen(),
    );
  }
}
