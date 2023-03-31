 import 'package:flutter_application_1/hivelog/Model/model_user.dart';
import 'package:hive/hive.dart';

class DataBase{
  DataBase._internal();
  static DataBase instancec= DataBase._internal();
  factory DataBase(){//factory constructor for creating singleton class 
    return instancec;//these classs have only onr intance
  }
  Future<void>userSingUp(User user)async{
    final db =await Hive.openBox<User>('user');
    db.put(user.id,user);
  }
 }