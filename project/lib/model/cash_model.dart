class CashModel {
  final String title;
  final bool isPemasukan;
  final String description;
  final int nominal;

  CashModel({
    required this.title,
    required this.isPemasukan,
    required this.description,
    required this.nominal,
  });
  Map<String, dynamic> toMap() {
    var map = <String, Object?>{
      'title': title,
      'is_pemasukan': isPemasukan,
      'description': description,
      'nominal': nominal
    };
    return map;
  }

  factory CashModel.fromMap(Map<String, dynamic> map) {
    
    return CashModel(title: map['title'], isPemasukan: map['is_pemasukan'], description: map['description'], nominal: map['nominal']);
  }

}

