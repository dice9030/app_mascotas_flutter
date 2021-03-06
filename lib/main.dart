import 'package:app_mascotas_flutter/src/page/login_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'Login',
      routes: {
        'Login':(BuildContext context) => LoginPage(),
      },
    );
  }
}