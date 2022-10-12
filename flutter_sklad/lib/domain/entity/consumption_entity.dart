class ConsumptionEntity {
  late int id;
  DateTime date;
  int count;
  int productId;
  int userId;
  int issuePointId;
  String status;

  ConsumptionEntity({required this.date, required this.count, required this.productId, required this.userId, required this.issuePointId, required this.status});
}