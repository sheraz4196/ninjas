class User {
  final String id;
  final String email;
  final String displayName;
  final String? profilePicture;
  final String status; // online, offline, away
  final DateTime lastSeen;

  User({
    required this.id,
    required this.email,
    required this.displayName,
    this.profilePicture,
    this.status = 'offline',
    required this.lastSeen,
  });

  // Create a user from a map (useful for JSON)
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      email: map['email'] ?? '',
      displayName: map['displayName'] ?? '',
      profilePicture: map['profilePicture'],
      status: map['status'] ?? 'offline',
      lastSeen: DateTime.parse(map['lastSeen']),
    );
  }

  // Convert user to map (useful for JSON)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'displayName': displayName,
      'profilePicture': profilePicture,
      'status': status,
      'lastSeen': lastSeen.toIso8601String(),
    };
  }

  // Copy with method for easy updates
  User copyWith({
    String? id,
    String? email,
    String? displayName,
    String? profilePicture,
    String? status,
    DateTime? lastSeen,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      profilePicture: profilePicture ?? this.profilePicture,
      status: status ?? this.status,
      lastSeen: lastSeen ?? this.lastSeen,
    );
  }

  // Check if user is online
  bool get isOnline => status == 'online';

  // Get initials for avatar
  String get initials {
    final names = displayName.split(' ');
    if (names.length >= 2) {
      return '${names[0][0]}${names[1][0]}'.toUpperCase();
    }
    return displayName.isNotEmpty ? displayName[0].toUpperCase() : '?';
  }

  @override
  String toString() {
    return 'User: $displayName ($email) - $status';
  }
}
