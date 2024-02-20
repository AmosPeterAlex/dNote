import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app1/material_app_theme.dart';

import 'controller/note_controller.dart';
import 'controller/obscure_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ObscureController());
  Get.put(NoteBookController());
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: 'AIzaSyCPygqAau-CZDQAQCWLGDiMimMgOt33Gm4',
    appId: '1:277725000121:android:51663cbb79840184f54668',
    messagingSenderId: '277725000121',
    projectId: 'amos-project-1-b1fa2',
    storageBucket: 'amos-project-1-b1fa2.appspot.com',
  ));
  runApp(SNote());
}

/*

TODO:
 Google font alatha fonts add akan okumo?
 making responsive
 dark mode switching must ano?
 portrait to landscape
 logout inu mune snackbar

 */
