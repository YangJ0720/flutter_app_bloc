import 'file:///F:/FlutterProjects/flutter_app_bloc/lib/bloc/engine/bloc_engine.dart';
import 'package:rxdart/rxdart.dart';

///
class LoginBloc implements BlocBase {
  BehaviorSubject<bool> _subject = BehaviorSubject<bool>();

  Sink<bool> get sink => _subject.sink;

  Stream<bool> get stream => _subject.stream.asBroadcastStream();

  ///
  Future<bool> login(String username, String password) async {
    await Future.delayed(Duration(seconds: 3));
    return 'admin' == username && '123456' == password;
  }

  @override
  void dispose() {
    _subject.close();
    _subject = null;
  }
}
