
import 'package:json_annotation/json_annotation.dart';
part 'singup_response.g.dart';

@JsonSerializable()
class SignUpResponse{
   String? message;
  bool? status;
  @JsonKey(name: 'data')
  UserData? userData;
  int? code;

  SignUpResponse({this.message, this.code, this.status,this.userData});

  factory SignUpResponse.fromJson(Map<String, dynamic> json)=>_$SignUpResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}