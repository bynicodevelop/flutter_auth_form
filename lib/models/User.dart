class UserModel {
  static final UID = 'uid';
  static final EMAIL = 'email';
  static final PASSWORD = 'password';

  String uid;
  String email;
  String password;

  UserModel({
    this.uid,
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      UserModel.UID: instance.uid,
      UserModel.EMAIL: instance.email,
      UserModel.PASSWORD: instance.password,
    };
