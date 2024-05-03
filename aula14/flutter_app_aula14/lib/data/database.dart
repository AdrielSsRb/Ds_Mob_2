import 'package:sqflite/sqflite.dart'; //pacote que permite a interação co o banco de dados
import 'package:path/path.dart'; //pacote que permite encontrar o caminho para salvar o banco de dados
import 'package:flutter_app_aula14/data/databasedao.dart';

Future<Database> getDatabase() async {
  //getDatabasePath ira pegar o diretorio dobanco de dados
  final String path = join(await getDatabasesPath(), 'users.db');
  return openDatabase(path, onCreate: (db, version){
    db.execute(UsersDao.tabela);
  });

}

