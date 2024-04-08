import 'package:app_conection_apirest/providers/api_provider_user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
 const HomeScreen({super.key});

 @override
 _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 @override
 void initState() {
    super.initState();
    final apiProviderUser = Provider.of<ApiProviderUser>(context, listen: false);
    apiProviderUser.loginUser();
 }

 @override
 Widget build(BuildContext context) {
    // Tu código de construcción aquí
    return const Scaffold(
      body: Center(
        child: Text('akljajlñdhjlñd'),
      ),
    );
 }
}