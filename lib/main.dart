import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'UI/products_provider/products_provider.dart';
import 'UI/screens/products_screen/main_screens/all_products_screen.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(
    ChangeNotifierProvider(
      create: (context) => sl<ProductProvider>()..fetchProducts(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Products',
      home: const ProductGridScreen(),
    );
  }
}
