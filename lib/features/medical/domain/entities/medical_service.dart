class MedicalService {
  final int id;
  final String title;
  final String description;
  final String category;
  final bool isAvailable;
  final String contact;
  final double? rating;

  const MedicalService({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.isAvailable,
    required this.contact,
    this.rating,
  });
}
