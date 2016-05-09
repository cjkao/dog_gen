// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:dog/example.dart';

void main() {
  var dt = new DateTime.now();
  var str = new Person("A", "middle", middleName: "B", dateOfBirth: dt).toJson().toString();
  new Person.fromJson(str);
  print(str);
}
