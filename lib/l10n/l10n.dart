import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

extension AppLocalizationsX on BuildContext {
  S get l10n => S.of(this);
}
