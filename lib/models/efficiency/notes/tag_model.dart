import 'package:flutter/material.dart';

class TagModel {
  final int? id;
  final String? labelName;
  final String? labelColourCode;
  final int? institution;
  final int? createMemberId;
  final String? createdAt;
  final String? updatedAt;
  final dynamic deletedAt;
  final int? labelNumber;
  const TagModel(
      {this.id,
      this.labelName,
      this.labelColourCode,
      this.institution,
      this.createMemberId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.labelNumber});
  TagModel copyWith(
      {int? id,
      String? labelName,
      String? labelColourCode,
      int? institution,
      int? createMemberId,
      String? createdAt,
      String? updatedAt,
      dynamic? deletedAt,
      int? labelNumber}) {
    return TagModel(
        id: id ?? this.id,
        labelName: labelName ?? this.labelName,
        labelColourCode: labelColourCode ?? this.labelColourCode,
        institution: institution ?? this.institution,
        createMemberId: createMemberId ?? this.createMemberId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
        labelNumber: labelNumber ?? this.labelNumber);
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'labelName': labelName,
      'labelColourCode': labelColourCode,
      'institution': institution,
      'createMemberId': createMemberId,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
      'labelNumber': labelNumber
    };
  }

  static TagModel fromJson(Map<String, Object?> json) {
    return TagModel(
        id: json['id'] == null ? null : json['id'] as int,
        labelName:
            json['labelName'] == null ? null : json['labelName'] as String,
        labelColourCode: json['labelColourCode'] == null
            ? null
            : json['labelColourCode'] as String,
        institution:
            json['institution'] == null ? null : json['institution'] as int,
        createMemberId: json['createMemberId'] == null
            ? null
            : json['createMemberId'] as int,
        createdAt:
            json['createdAt'] == null ? null : json['createdAt'] as String,
        updatedAt:
            json['updatedAt'] == null ? null : json['updatedAt'] as String,
        deletedAt: json['deletedAt'] as dynamic,
        labelNumber:
            json['labelNumber'] == null ? null : json['labelNumber'] as int);
  }

  @override
  String toString() {
    return '''TagModel(
                id:$id,
labelName:$labelName,
labelColourCode:$labelColourCode,
institution:$institution,
createMemberId:$createMemberId,
createdAt:$createdAt,
updatedAt:$updatedAt,
deletedAt:$deletedAt,
labelNumber:$labelNumber
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is TagModel &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.labelName == labelName &&
        other.labelColourCode == labelColourCode &&
        other.institution == institution &&
        other.createMemberId == createMemberId &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.deletedAt == deletedAt &&
        other.labelNumber == labelNumber;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, labelName, labelColourCode, institution,
        createMemberId, createdAt, updatedAt, deletedAt, labelNumber);
  }
}

class TagColorOptionsModel {
  final String key;
  final Color color;
  final Color borderColor;
  const TagColorOptionsModel({
    required this.key,
    required this.color,
    required this.borderColor,
  });
}
