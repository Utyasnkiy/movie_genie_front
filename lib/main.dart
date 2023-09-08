import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/repo/film_repo/film_repo.dart';
import 'package:movie_genie/core/internal/app.dart';
import 'package:movie_genie/core/internal/app_dependency.dart';
import 'package:movie_genie/firebase_options.dart';

import 'core/internal/init_container.dart';

void main() {

  _run();
}

Future<void> _run() async{


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initContainer();
  runApp(
    AppDependency(
      child: App(),
    ),
  );
}
