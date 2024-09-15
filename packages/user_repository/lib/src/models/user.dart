import '../entities/entities.dart';

class MyUser{
  String userId;
  String email;
  String name;
  bool isPremium;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.isPremium,
  });

  static final empty = MyUser(
    userId: '', 
    email: '', 
    name: '', 
    isPremium: false,
  );

  MyUserEntity toEntity(){
    return MyUserEntity(
      userId: userId,
      email: email,
      name: name,
      isPremium: isPremium,
    );
  }

  static MyUser fromEntity(MyUserEntity entity){
    return MyUser(
      userId: entity.userId, 
      email: entity.email, 
      name: entity.name, 
      isPremium: entity.isPremium,
    );
  }

  @override
  String toString(){
    return 'MyUser: $userId, $email, $name, $isPremium';
  }
}