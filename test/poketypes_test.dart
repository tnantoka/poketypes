import 'package:flutter_test/flutter_test.dart';

import 'package:poketypes/poketypes.dart';

void main() {
  test('normal type', () {
    final Poketype normal = Poketype('normal');
    expect(normal.name, 'normal');
    expect(normal.label['en'], 'Normal');
    expect(normal.label['ja'], 'ノーマル');
    expect(normal.color, '#b1b1b1');
    expect(normal.effectiveness['ghost'], 0.0);
    expect(normal.effectiveness['steel'], 0.5);
    expect(normal.weakness['fighting'], 2.0);
    expect(normal.weakness['ghost'], 0.0);
  });
}
