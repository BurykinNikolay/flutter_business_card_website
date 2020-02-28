import 'package:dioc/dioc.dart';

@bootstrapper
abstract class AppBootstrapper extends Bootstrapper {
  Container base();
}

class _AppBootstrapper extends AppBootstrapper {
  @override
  Container base() {
    final container = Container();
    return container;
  }
}

class AppBootstrapperBuilder {
  static final _AppBootstrapper instance = build();

  static _AppBootstrapper build() {
    return _AppBootstrapper();
  }
}
