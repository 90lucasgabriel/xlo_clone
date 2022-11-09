import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'package:xlo_mobx/screens/base/base_screen.dart';

Future<void> initParse() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Parse().initialize(
    'YUXSdbyJJtwQuo7qdj1qTaLlvCc1y16gJ2OjXGJD',
    'https://parseapi.back4app.com/',
    clientKey: 'ymivvdSQiyQ3xIVd8ZhXwAe0sv06iiuHleIWgq13',
    autoSendSessionId: true,
    debug: true,
  );
}

void main() async {
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
      home: BaseScreen(),
    );
  }
}
