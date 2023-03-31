class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Siti Nuraisah",
      username: "Aisyah",
      email: "20060738@itg.ac.id",
      profilePhoto:
          "https://media.istockphoto.com/id/1195743934/id/vektor/desain-vektor-karakter-panda-lucu.jpg?s=612x612&w=0&k=20&c=KKTXLb68VkX8JW8KRVogaVD7J7kK_SZLt5TG8a3Ilmw=",
      phoneNumber: "083862179730",
    );
  }
}