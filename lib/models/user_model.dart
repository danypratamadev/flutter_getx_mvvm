class UserModel {

  final int id;
  final String avatar;
  final String email;
  final String firstName;
  final String lastName;

  UserModel({
    required this.id, 
    required this.avatar, 
    required this.email, 
    required this.firstName, 
    required this.lastName
  });

  factory UserModel.fromJson({required Map<String, dynamic> json}) => UserModel(
    id: json['id'], 
    avatar: json['avatar'], 
    email: json['email'], 
    firstName: json['first_name'], 
    lastName: json['last_name']
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'avatar': avatar,
    'email': email, 
    'first_name': firstName,
    'last_name': lastName,
  };

}