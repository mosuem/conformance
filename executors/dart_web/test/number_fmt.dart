@TestOn('browser')

import 'dart:async';
import 'dart:convert';

import 'package:test/test.dart';

import '../bin/numberformat.dart';

void main() {
  testWithFormatting('Check number format output', () {
    final inputLine = {
      'label': '0009',
      'locale': 'es-MX',
      'skeleton': 'compact-short percent unit-width-full-name',
      'input': '0',
      'options': {
        'notation': 'compact',
        'compactDisplay': 'short',
        'style': 'unit',
        'unit': 'percent',
        'unitDisplay': 'long',
        'currencyDisplay': 'name'
      }
    };
    final outputLine = testDecimalFormat(jsonEncode(inputLine));
    print(outputLine);
  });
}

void testWithFormatting<T>(
  dynamic description,
  T Function() body, {
  String? testOn,
  Timeout? timeout,
  dynamic skip,
  dynamic tags,
  Map<String, dynamic>? onPlatform,
  int? retry,
}) {
  test(
    description,
    () => runZoned(body, zoneValues: {#test.allowFormatting: true}),
    testOn: testOn,
    timeout: timeout,
    skip: skip,
    tags: tags,
    onPlatform: onPlatform,
    retry: retry,
  );
}
