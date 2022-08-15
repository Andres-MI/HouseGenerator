enum HouseAge { ancient, veryOld, established, recent, newHouse }

extension AgeExtension on HouseAge {
  static const names = {
    HouseAge.ancient: 'Ancient',
    HouseAge.veryOld: 'Very Old',
    HouseAge.established: 'Established',
    HouseAge.recent: 'Recent',
    HouseAge.newHouse: 'New',
  };

  String? get name => names[this];
}
