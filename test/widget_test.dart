import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/main.dart';

void main() {
  testWidgets('Navigation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/Register': (context) => const RegisterPage(),
      },
    ));

    // Verify that HomePage is displayed.
    expect(find.text('Home Page welcome!'), findsOneWidget);

    // Tap the 'Login' button and trigger a frame.
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();

    // Verify that LoginPage is displayed.
    expect(find.text('Login Page'), findsOneWidget);

    // Tap the 'Back' button and trigger a frame.
    await tester.tap(find.text('Back'));
    await tester.pumpAndSettle();

    // Verify that HomePage is displayed again.
    expect(find.text('Home Page welcome!'), findsOneWidget);

    // Tap the 'Register' button and trigger a frame.
    await tester.tap(find.text('Register'));
    await tester.pumpAndSettle();

    // Verify that RegisterPage is displayed.
    expect(find.text('Register Page'), findsOneWidget);

    // Tap the 'Back' button and trigger a frame.
    await tester.tap(find.text('Back'));
    await tester.pumpAndSettle();

    // Verify that HomePage is displayed again.
    expect(find.text('Home Page welcome!'), findsOneWidget);
  });
}
