import 'file:///F:/FlutterProjects/flutter_app_bloc/lib/bloc/engine/bloc_engine.dart';
import 'package:rxdart/rxdart.dart';

///
class AboutBloc implements BlocBase {
  BehaviorSubject<bool> _subject = BehaviorSubject<bool>();

  Sink<bool> get sink => _subject.sink;

  Stream<bool> get stream => _subject.stream.asBroadcastStream();

  ///
  Future<void> checkVersion(String version) async {
    await Future.delayed(Duration(seconds: 1));
    var result = version != '1.0.1';
    sink.add(result);
  }

  @override
  void dispose() {
    print('<------------- dispose ------------->');
    _subject.close();
    _subject = null;
  }
}
