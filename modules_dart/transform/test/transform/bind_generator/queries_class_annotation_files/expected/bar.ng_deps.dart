library bar.ng_deps.dart;

import 'bar.dart';
import 'package:angular2/src/core/metadata.dart';

var _visited = false;
void initReflector(reflector) {
  if (_visited) return;
  _visited = true;
  reflector
    ..registerType(
        ToolTip,
        new ReflectionInfo(const [
          const Directive(
              selector: '[tool-tip]',
              queries: const {'queryField': const ContentChild('child')})
        ], const [], () => new ToolTip()))
    ..registerSetters({'queryField': (o, v) => o.queryField = v});
}
