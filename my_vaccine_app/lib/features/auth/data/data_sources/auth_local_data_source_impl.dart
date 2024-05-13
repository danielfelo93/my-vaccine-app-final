import 'package:flutter/foundation.dart' as foundation;
import 'package:hive/hive.dart';
import 'package:my_vaccine_app/core/error/exceptions.dart';
import 'package:my_vaccine_app/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/auth.dart';
import 'package:path_provider/path_provider.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {

  final _kAuthBox = 'auth_box';

  @override
  Future<bool> initDb() async{
    try {
      if (!foundation.kIsWeb) {
        final appDocumentDir = await getApplicationDocumentsDirectory();
        Hive.init(appDocumentDir.path);
      }
      Hive.registerAdapter(AuthAdapter());
      await Hive.openBox<Auth>(_kAuthBox);
      return true;
    } catch (_) {
      throw ConnectionException();
    }
  }

  @override
  Future<bool> signIn(bool status) async {
    try{
      final authBox = Hive.box<Auth>(_kAuthBox);
      final convertedTask = Auth(isLoggedIn: status);
      await authBox.add(convertedTask);
      return Future.value(true);
    } catch (_) {
      throw ConnectionException();
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    try{
      final taskBox = Hive.box<Auth>(_kAuthBox);
      return taskBox.values.first.isLoggedIn;
    }
    catch(_) {
      throw ConnectionException();
    }
  }

}