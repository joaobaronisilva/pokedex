import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'mvvm.dart';

abstract class ViewState<S extends StatefulWidget, M extends ViewModel> extends State<S> with View<M> {
  @override
  void dispose() {
    super.dispose();
    final isDisposed = Modular.dispose<M>();
    if (isDisposed) {
      return;
    }
    viewModel.dispose();
  }
}
