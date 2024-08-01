import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:sinefili_app/providers/favorites_provider.dart';
import 'package:sinefili_app/screens/login_screen.dart';
import 'package:sinefili_app/screens/onboarding_screen.dart';
import 'firebase_options.dart';
import 'providers/wishlist_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isOnboardingComplete = false;

  void _completeOnboarding() {
    setState(() {
      _isOnboardingComplete = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WishlistProvider()),
        ChangeNotifierProvider(create: (_) => FavoritesProvider()),
      ],
      child: MaterialApp(
        title: 'Sinefili',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: _isOnboardingComplete
            ? const LoginScreen()
            : OnboardingScreen(onComplete: _completeOnboarding),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
