import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_payment/home_screen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey = 'pk_test_51LYQf9SElXKik7iv0HqsnaIOakI4UPsXIpi5uNAlFgsrxdI3N7d7dy3LgWQnhTw1Nfl92Ubqk755pwMZo4KKVfgg00lotArJji';

  await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

