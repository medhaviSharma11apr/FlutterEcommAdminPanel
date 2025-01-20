import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutterstore/utils/formatters/formatter.dart';

import '../../../utils/formatters/formatter.dart';

class UserModel {
  UserModel({
    this.firstName = '',
    this.lastName = '',
    this.userName = '',
    this.email = '',
    this.phoneNumber = '',
    this.profilePicture = '',
    this.id,
    // this.role = AppRole.user,
    this.role = 'Admin',
    this.createdAt,
    this.updatedAt,
  });
  final String? id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  final String phoneNumber;
  final String profilePicture;
  String role;
  // AppRole role;
  DateTime? createdAt;
  DateTime? updatedAt;

  // full name

  String get fullName => '$firstName $lastName';
  String get formattedDate => TFormatter.formatDate(createdAt);
  String get formattedUpdatedDate => TFormatter.formatDate(updatedAt);
  String get formattedPhoneNumber => TFormatter.formatPhoneNumber(phoneNumber);

  /// static function to split user
  static List<String> namePart(fullName) => fullName.toString().split(" ");

  static String generateUserName(fullName) {
    List<String> namePart = fullName.toString().split(" ");
    String firstName = namePart[0].trim();
    String lastName =
        namePart.length > 1 ? namePart[1].trim().toLowerCase() : "";

    String cameCaseUserName = "$firstName$lastName";
    String userNameWithPrefix = "cwt_$cameCaseUserName";
    return userNameWithPrefix;
  }

  static UserModel empty() => UserModel(
        email: '',
      );

  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'UserName': userName,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'Role': role,
      'ProfilePicture': profilePicture,
      'Id': id,
      'CreatedAt': createdAt,
      'UpdatedAt': DateTime.now(),
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data();
      return UserModel(
          id: document.id,
          firstName:
              data!.containsKey('FirstName') ? data['FirstName'] ?? '' : '',
          lastName: data.containsKey('LastName') ? data['LastName'] ?? '' : '',
          userName: data.containsKey('UserName') ? data['UserName'] ?? '' : '',
          email: data.containsKey('Email') ? data['Email'] ?? '' : '',
          phoneNumber:
              data.containsKey('PhoneNumber') ? data['PhoneNumber'] ?? '' : '',
          profilePicture: data.containsKey('profilePicture')
              ? data['profilePicture'] ?? ''
              : '',
          // role: data.containsKey('Role') ? (data['Role']?? AppRole.user)== AppRole.admin.name.toString()? AppRole.admin :AppRole.user:AppRole.user,
          role: data.containsKey('Role') ? 'Admin' : '',
          createdAt: data.containsKey('CreatedAt')
              ? data['CreatedAt']?.toDate() ?? DateTime.now()
              : DateTime.now(),
          updatedAt: data.containsKey('UpdatedAt')
              ? data['UpdatedAt']?.toDate() ?? DateTime.now()
              : DateTime.now());
    } else {
      return UserModel.empty();
    }
  }
}
