////////////////////////////////////////////////////////////////////////////////////////////////////
import 'package:flutter/material.dart';
import 'package:form_validation/providers/login_form_provider.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
import 'package:form_validation/screens/screens.dart';
import 'package:provider/provider.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
void main() {
  runApp(
  MultiProvider(
      providers: [
      ChangeNotifierProvider<LoginFormProvider>(create: (_)=>LoginFormProvider())
  ],
  child: MyApp()
  )
  );
}
////////////////////////////////////////////////////////////////////////////////////////////////////
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: LoginScreen.route,
      routes: {
        HomeScreen.route: (_) => const HomeScreen(),
        LoginScreen.route: (_) => const LoginScreen()
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300]
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
