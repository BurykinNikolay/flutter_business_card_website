import 'package:built_redux/built_redux.dart';
import 'package:dioc/dioc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

import 'di/di_container.dart';
import 'domain/domain.dart';
import 'presentation/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final store = Store<AppState, AppStateBuilder, AppActions>(
    reducers,
    AppState(),
    AppActions(),
    middleware: middlewares,
  );

  @override
  void initState() {
    super.initState();
    diContainer.register<Store<AppState, AppStateBuilder, AppActions>>(
      (container) => store,
      defaultMode: InjectMode.singleton,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ReduxProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}
