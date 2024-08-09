class GetUser {
  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  List<User> data;

  GetUser({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });

  factory GetUser.fromJson(Map<String, dynamic> json) {
    return GetUser(
      page: json['page'] as int,
      perPage: json['per_page'] as int,
      total: json['total'] as int,
      totalPages: json['total_pages'] as int,
      data: (json['data'] as List<dynamic>)
          .map(
            (user) => User.fromJson(user),
          )
          .toList(),
    );
  }
}

class User {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] ?? 0,
        email: json["email"] ?? "",
        firstName: json["first_name"] ?? "",
        lastName: json["last_name"] ?? "",
        avatar: json["avatar"] ?? "",
      );
}
