library mybuild;

import 'package:build/build.dart';

import 'phases.dart';

main() async {
  await build(phases, deleteFilesByDefault: true);
}
