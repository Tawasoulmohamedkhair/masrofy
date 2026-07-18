class GoalModels {
  final String id;

  final String title;
  final double current;
  final double target;

  final bool isActive;

  GoalModels({
    required this.id,
    required this.title,
    required this.current,
    required this.target,
    required this.isActive,
  });
  double get progressValue => target == 0 ? 0 : current / target; 
  int get percentage => (progressValue * 100).round();
  factory GoalModels.fromJson(    String id,
Map<String, dynamic> json) {
    return GoalModels(
      id: id,
      title: json['title'],
      current: json['current'],
      target: json['target'],
      isActive: json['isActive'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'current': current,
      'target': target,
      'isActive': isActive,
    };
  }
}
