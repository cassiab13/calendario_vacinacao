class Vaccine {
  final String name;
  final int months;
  final String? description;
  final int dose;
  bool taken;

  Vaccine(
      {required this.name,
      required this.months,
      this.description,
      this.taken = false,
      required this.dose});
}

List<Vaccine> vaccines = [
  Vaccine(name: 'BCG', months: 0, dose: 1),
  Vaccine(name: 'Hepatite B', months: 0, dose: 1),
  Vaccine(name: 'Penta', months: 2, dose: 1),
  Vaccine(name: 'VIP', months: 2, dose: 1),
  Vaccine(name: 'Pneumocócica', months: 2, dose: 1),
  Vaccine(name: 'Rotavírus', months: 2, dose: 1),
  Vaccine(name: 'Meningocócica C', months: 3, dose: 1),
  Vaccine(name: 'Penta', months: 4, dose: 2),
  Vaccine(name: 'VIP', months: 4, dose: 2),
  Vaccine(name: 'Pneumocócica', months: 4, dose: 2),
  Vaccine(name: 'Rotavírus', months: 4, dose: 2),
  Vaccine(name: 'Meningocócica C', months: 5, dose: 2),
  Vaccine(name: 'Penta', months: 6, dose: 3),
  Vaccine(name: 'VIP', months: 6, dose: 3),
  Vaccine(name: 'Febre Amarela', months: 9, dose: 1),
  Vaccine(name: 'Tríplice Viral', months: 12, dose: 1),
  Vaccine(name: 'Pneumocócica', months: 12, dose: 2),
  Vaccine(name: 'Meningocócica C', months: 12, dose: 2),
  Vaccine(name: 'Hepatite A', months: 12, dose: 1),
  Vaccine(name: 'Tetra Viral', months: 15, dose: 1),
  Vaccine(name: 'DTP', months: 15, dose: 2),
  Vaccine(name: 'VOP', months: 15, dose: 1),
  Vaccine(name: 'DTP', months: 48, dose: 2),
  Vaccine(name: 'VOP', months: 48, dose: 2),
  Vaccine(name: 'Tríplice Viral', months: 48, dose: 2),
  Vaccine(name: 'HPV', months: 108, dose: 1),
  Vaccine(name: 'HPV', months: 110, dose: 2),
  Vaccine(name: 'Meningocócica ACWY', months: 132, dose: 1),
];
