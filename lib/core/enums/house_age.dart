import '../../generated/l10n.dart';

enum HouseAge { ancient, veryOld, established, recent, newHouse }

extension AgeExtension on HouseAge {
  static Map<HouseAge, String> names = {
    HouseAge.ancient: S.current.ancient,
    HouseAge.veryOld: S.current.veryOld,
    HouseAge.established: S.current.established,
    HouseAge.recent: S.current.recent,
    HouseAge.newHouse: S.current.newHouse,
  };

  String? get name => names[this];
}
