class MyUserEntity {
  String userId;
  String email;
  String name;
  bool isPremium;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.isPremium,
  });

  Map<String, Object?> toDocument(){
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'isPremium': isPremium,
    };
  } 

  static MyUserEntity fromDocument(Map<String, dynamic> doc){
    return MyUserEntity(
      userId: doc['userId'], 
      email: doc['email'], 
      name: doc['name'], 
      isPremium: doc['isPremium'],
    );
  }

}