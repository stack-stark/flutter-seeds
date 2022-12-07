class StockModel {
  final String? code;
  final String? name;
  final double? netWorth;
  final double? expectWorth;
  final double? totalWorth;
  final String? expectGrowth;
  final String? dayGrowth;
  final String? lastWeekGrowth;
  final String? lastMonthGrowth;
  final String? lastThreeMonthsGrowth;
  final String? lastSixMonthsGrowth;
  final String? lastYearGrowth;
  final String? netWorthDate;
  final String? expectWorthDate;
  const StockModel(
      {this.code,
      this.name,
      this.netWorth,
      this.expectWorth,
      this.totalWorth,
      this.expectGrowth,
      this.dayGrowth,
      this.lastWeekGrowth,
      this.lastMonthGrowth,
      this.lastThreeMonthsGrowth,
      this.lastSixMonthsGrowth,
      this.lastYearGrowth,
      this.netWorthDate,
      this.expectWorthDate});
  StockModel copyWith(
      {String? code,
      String? name,
      double? netWorth,
      double? expectWorth,
      double? totalWorth,
      String? expectGrowth,
      String? dayGrowth,
      String? lastWeekGrowth,
      String? lastMonthGrowth,
      String? lastThreeMonthsGrowth,
      String? lastSixMonthsGrowth,
      String? lastYearGrowth,
      String? netWorthDate,
      String? expectWorthDate}) {
    return StockModel(
        code: code ?? this.code,
        name: name ?? this.name,
        netWorth: netWorth ?? this.netWorth,
        expectWorth: expectWorth ?? this.expectWorth,
        totalWorth: totalWorth ?? this.totalWorth,
        expectGrowth: expectGrowth ?? this.expectGrowth,
        dayGrowth: dayGrowth ?? this.dayGrowth,
        lastWeekGrowth: lastWeekGrowth ?? this.lastWeekGrowth,
        lastMonthGrowth: lastMonthGrowth ?? this.lastMonthGrowth,
        lastThreeMonthsGrowth:
            lastThreeMonthsGrowth ?? this.lastThreeMonthsGrowth,
        lastSixMonthsGrowth: lastSixMonthsGrowth ?? this.lastSixMonthsGrowth,
        lastYearGrowth: lastYearGrowth ?? this.lastYearGrowth,
        netWorthDate: netWorthDate ?? this.netWorthDate,
        expectWorthDate: expectWorthDate ?? this.expectWorthDate);
  }

  Map<String, Object?> toJson() {
    return {
      'code': code,
      'name': name,
      'netWorth': netWorth,
      'expectWorth': expectWorth,
      'totalWorth': totalWorth,
      'expectGrowth': expectGrowth,
      'dayGrowth': dayGrowth,
      'lastWeekGrowth': lastWeekGrowth,
      'lastMonthGrowth': lastMonthGrowth,
      'lastThreeMonthsGrowth': lastThreeMonthsGrowth,
      'lastSixMonthsGrowth': lastSixMonthsGrowth,
      'lastYearGrowth': lastYearGrowth,
      'netWorthDate': netWorthDate,
      'expectWorthDate': expectWorthDate
    };
  }

  List<String> get keys {
    return [
      'code',
      'name',
      'netWorth',
      'expectWorth',
      'totalWorth',
      'expectGrowth',
      'dayGrowth',
      'lastWeekGrowth',
      'lastMonthGrowth',
      'lastThreeMonthsGrowth',
      'lastYearGrowth',
      'netWorthDate',
      'expectWorthDate',
    ];
  }

  static StockModel fromJson(Map<String, Object?> json) {
    return StockModel(
        code: json['code'] == null ? null : json['code'] as String,
        name: json['name'] == null ? null : json['name'] as String,
        netWorth: json['netWorth'] == null ? null : json['netWorth'] as double,
        expectWorth:
            json['expectWorth'] == null ? null : json['expectWorth'] as double,
        totalWorth:
            json['totalWorth'] == null ? null : json['totalWorth'] as double,
        expectGrowth: json['expectGrowth'] == null
            ? null
            : json['expectGrowth'] as String,
        dayGrowth:
            json['dayGrowth'] == null ? null : json['dayGrowth'] as String,
        lastWeekGrowth: json['lastWeekGrowth'] == null
            ? null
            : json['lastWeekGrowth'] as String,
        lastMonthGrowth: json['lastMonthGrowth'] == null
            ? null
            : json['lastMonthGrowth'] as String,
        lastThreeMonthsGrowth: json['lastThreeMonthsGrowth'] == null
            ? null
            : json['lastThreeMonthsGrowth'] as String,
        lastSixMonthsGrowth: json['lastSixMonthsGrowth'] == null
            ? null
            : json['lastSixMonthsGrowth'] as String,
        lastYearGrowth: json['lastYearGrowth'] == null
            ? null
            : json['lastYearGrowth'] as String,
        netWorthDate: json['netWorthDate'] == null
            ? null
            : json['netWorthDate'] as String,
        expectWorthDate: json['expectWorthDate'] == null
            ? null
            : json['expectWorthDate'] as String);
  }

  @override
  String toString() {
    return '''StockModel(
                code:$code,
name:$name,
netWorth:$netWorth,
expectWorth:$expectWorth,
totalWorth:$totalWorth,
expectGrowth:$expectGrowth,
dayGrowth:$dayGrowth,
lastWeekGrowth:$lastWeekGrowth,
lastMonthGrowth:$lastMonthGrowth,
lastThreeMonthsGrowth:$lastThreeMonthsGrowth,
lastSixMonthsGrowth:$lastSixMonthsGrowth,
lastYearGrowth:$lastYearGrowth,
netWorthDate:$netWorthDate,
expectWorthDate:$expectWorthDate
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is StockModel &&
        other.runtimeType == runtimeType &&
        other.code == code &&
        other.name == name &&
        other.netWorth == netWorth &&
        other.expectWorth == expectWorth &&
        other.totalWorth == totalWorth &&
        other.expectGrowth == expectGrowth &&
        other.dayGrowth == dayGrowth &&
        other.lastWeekGrowth == lastWeekGrowth &&
        other.lastMonthGrowth == lastMonthGrowth &&
        other.lastThreeMonthsGrowth == lastThreeMonthsGrowth &&
        other.lastSixMonthsGrowth == lastSixMonthsGrowth &&
        other.lastYearGrowth == lastYearGrowth &&
        other.netWorthDate == netWorthDate &&
        other.expectWorthDate == expectWorthDate;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        code,
        name,
        netWorth,
        expectWorth,
        totalWorth,
        expectGrowth,
        dayGrowth,
        lastWeekGrowth,
        lastMonthGrowth,
        lastThreeMonthsGrowth,
        lastSixMonthsGrowth,
        lastYearGrowth,
        netWorthDate,
        expectWorthDate);
  }
}
