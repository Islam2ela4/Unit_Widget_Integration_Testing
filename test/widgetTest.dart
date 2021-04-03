
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testing/main.dart';

void main() {
  testWidgets('Reverse word widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);

    await tester.enterText(textField, 'Hello');
    var text = find.text('Hello');
    expect(text, findsOneWidget);
    
    var reverseWord = find.text("Reverse");
    expect(reverseWord, findsWidgets);

    var button = find.byType(RaisedButton);
    expect(button, findsOneWidget);

    await tester.tap(button);
    await tester.pump();
    var resultWord = find.text('olleH');
    expect(resultWord, findsOneWidget);
  });
}
