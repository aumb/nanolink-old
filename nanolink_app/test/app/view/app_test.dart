// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_test/flutter_test.dart';
import 'package:nanolink_app/app/app.dart';
import 'package:nanolink_app/features/home/presentation/view/home_page.dart';
import 'package:nanolink_app/resources/router/app_router.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      final router = AppRouter();
      await tester.pumpWidget(
        App(router: router),
      );
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
