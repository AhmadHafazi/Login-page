import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application__login_page/main.dart';

void main() {
  testWidgets('Login screen displays correctly', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MyApp());

    // Verify initial widgets
    expect(find.text('Berita Aji'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(2));

    // Enter username and password
    await tester.enterText(find.byType(TextFormField).at(0), 'admin');
    await tester.enterText(find.byType(TextFormField).at(1), '1234');

    // Tap the login button
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();

    // Verify navigation to HomePage
    expect(find.text('Selamat datang di Berita Aji!'), findsOneWidget);
  });
}
