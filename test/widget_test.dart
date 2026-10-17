import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:roll_the_dice/main.dart';

void main() {
  testWidgets('Kocka zobrazuje lokálny asset a hádže hodnoty 1 až 6', (tester) async {
    await tester.pumpWidget(const DiceApp());
    await tester.pumpAndSettle();
    expect(find.text('Hodená hodnota: 1'), findsOneWidget);
    for (var i = 0; i < 30; i++) {
      await tester.tap(find.text('Hoď kockou'));
      await tester.pumpAndSettle();
      final image = tester.widget<Image>(find.byType(Image));
      final asset = image.image as AssetImage;
      expect(asset.assetName, matches(r'^assets/images/dice-[1-6]\.png$'));
      expect(tester.takeException(), isNull);
    }
  });
}
