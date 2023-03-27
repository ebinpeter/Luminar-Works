
import 'package:sqflite/sqflite.dart'as sql;

class Sqlhelper {
  static Future<void> createtable(sql.Database db) async {
    await db.execute("""
    CREATE TABLE user(
    id INTEGER PRIMARY KEY AAUTOINCREMENT NOT NULL ,
    name TEXT
    email TEXT
    password TEXT)""");
  }
  static Future<sql.Database>opendb()async{
    return sql.openDatabase(
      'datauser',
      version:1,
      onCreate: (sql.Database db,int version)async{
        await createtable(db);
      }
    );
  }
  //create new user
  static Future<int> AddNewUser(String name,String email,String password)async{
    final db= await Sqlhelper.opendb();
    final data={'name':name,'email':email,'password':password};
    final id = db.insert('user', data);
    return id;
  }
}
