// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
library tool.phase;

import 'package:build/build.dart';

import 'package:source_gen/generators/json_literal_generator.dart' as literal;
import 'package:source_gen/generators/json_serializable_generator.dart' as json;
import 'package:source_gen/source_gen.dart';

/// InputSet take package name as first parameter
final PhaseGroup phases = new PhaseGroup.singleAction(
    new GeneratorBuilder(const [const json.JsonSerializableGenerator(), const literal.JsonLiteralGenerator()]),
    new InputSet('dog_gen', const ['lib/ex*.dart']));
