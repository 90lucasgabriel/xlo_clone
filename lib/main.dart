import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'package:xlo_mobx/screens/base/base_screen.dart';
import 'package:xlo_mobx/shared/store/page_store.dart';

Future<void> initParse() async {
  await Parse().initialize(
    'YUXSdbyJJtwQuo7qdj1qTaLlvCc1y16gJ2OjXGJD',
    'https://parseapi.back4app.com/',
    clientKey: 'ymivvdSQiyQ3xIVd8ZhXwAe0sv06iiuHleIWgq13',
    autoSendSessionId: true,
    debug: true,
  );
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initParse();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BaseScreen(),
    );
  }
}
