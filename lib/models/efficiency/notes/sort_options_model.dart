class SortOptions {
  final String label;
  final String code;
  SortOptions({
    required this.label,
    required this.code,
  });
}

class SortOptionsModel {
  final String title;
  final String key;
  final List<SortOptions> options;

  SortOptionsModel({
    required this.title,
    required this.key,
    required this.options,
  });
}
