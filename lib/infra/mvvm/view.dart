import 'package:flutter_modular/flutter_modular.dart';

import 'viewmodel.dart';

mixin View<VM extends ViewModel> {
  /// Get the injected [ViewModel]
  final VM viewModel = Modular.get<VM>();
}
