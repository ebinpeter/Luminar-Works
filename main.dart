import 'package:flutter/material.dart';
import 'package:flutter_application_1/hivelog/Model/model_user.dart';
import 'package:flutter_application_1/hivelog/Screen/login.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:get/get.dart';

void main()async{
 WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  //Hive.registerAdapter(adapter,)
  await Hive.openBox<User>('User');
  runApp(GetMaterialApp(home: Login(),));
}