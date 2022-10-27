import 'package:flutter/material.dart';
import 'package:mini_dog_robot/ControlPage.dart';
import 'package:mini_dog_robot/ControlePrincipal.dart';
import 'package:mini_dog_robot/HomePage.dart';
import 'package:mini_dog_robot/SelecionarDispositivo.dart';
import 'package:mini_dog_robot/providers/StatusConexaoProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<StatusConexaoProvider>.value(
              value: StatusConexaoProvider()),
        ],
        child: MaterialApp(
          title: 'Xerocasa',
          initialRoute: '/',
          // initialRoute: '/byPassMain',
          routes: {
            '/': (context) => HomePage(),
            '/selectDevice': (context) => const SelecionarDispositivoPage(),
            '/byPassMain': (context) => const ControlPage(),
          },
        ));
  }
}
