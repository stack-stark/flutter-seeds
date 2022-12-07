class NotebooksModel {
  final int? createMemberId;
  final String? createdAt;
  final dynamic deletedAt;
  final int? firstLock;
  final int? id;
  final int? institution;
  final int? isLock;
  final String? noteBookName;
  final int? noteNumber;
  final String? password;
  final String? updatedAt;
  const NotebooksModel(
      {this.createMemberId,
      this.createdAt,
      this.deletedAt,
      this.firstLock,
      this.id,
      this.institution,
      this.isLock,
      this.noteBookName,
      this.noteNumber,
      this.password,
      this.updatedAt});
  NotebooksModel copyWith(
      {int? createMemberId,
      String? createdAt,
      dynamic? deletedAt,
      int? firstLock,
      int? id,
      int? institution,
      int? isLock,
      String? noteBookName,
      int? noteNumber,
      String? password,
      String? updatedAt}) {
    return NotebooksModel(
        createMemberId: createMemberId ?? this.createMemberId,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        firstLock: firstLock ?? this.firstLock,
        id: id ?? this.id,
        institution: institution ?? this.institution,
        isLock: isLock ?? this.isLock,
        noteBookName: noteBookName ?? this.noteBookName,
        noteNumber: noteNumber ?? this.noteNumber,
        password: password ?? this.password,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  Map<String, Object?> toJson() {
    return {
      'createMemberId': createMemberId,
      'createdAt': createdAt,
      'deletedAt': deletedAt,
      'firstLock': firstLock,
      'id': id,
      'institution': institution,
      'isLock': isLock,
      'noteBookName': noteBookName,
      'noteNumber': noteNumber,
      'password': password,
      'updatedAt': updatedAt
    };
  }

  static NotebooksModel fromJson(Map<String, Object?> json) {
    return NotebooksModel(
        createMemberId: json['createMemberId'] == null
            ? null
            : json['createMemberId'] as int,
        createdAt:
            json['createdAt'] == null ? null : json['createdAt'] as String,
        deletedAt: json['deletedAt'] as dynamic,
        firstLock: json['firstLock'] == null ? null : json['firstLock'] as int,
        id: json['id'] == null ? null : json['id'] as int,
        institution:
            json['institution'] == null ? null : json['institution'] as int,
        isLock: json['isLock'] == null ? null : json['isLock'] as int,
        noteBookName: json['noteBookName'] == null
            ? null
            : json['noteBookName'] as String,
        noteNumber:
            json['noteNumber'] == null ? null : json['noteNumber'] as int,
        password: json['password'] == null ? null : json['password'] as String,
        updatedAt:
            json['updatedAt'] == null ? null : json['updatedAt'] as String);
  }

  @override
  String toString() {
    return '''NotebooksModel(
                createMemberId:$createMemberId,
createdAt:$createdAt,
deletedAt:$deletedAt,
firstLock:$firstLock,
id:$id,
institution:$institution,
isLock:$isLock,
noteBookName:$noteBookName,
noteNumber:$noteNumber,
password:$password,
updatedAt:$updatedAt
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is NotebooksModel &&
        other.runtimeType == runtimeType &&
        other.createMemberId == createMemberId &&
        other.createdAt == createdAt &&
        other.deletedAt == deletedAt &&
        other.firstLock == firstLock &&
        other.id == id &&
        other.institution == institution &&
        other.isLock == isLock &&
        other.noteBookName == noteBookName &&
        other.noteNumber == noteNumber &&
        other.password == password &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        createMemberId,
        createdAt,
        deletedAt,
        firstLock,
        id,
        institution,
        isLock,
        noteBookName,
        noteNumber,
        password,
        updatedAt);
  }
}
