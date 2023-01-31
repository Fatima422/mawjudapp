
class UserModel {
  String? UsersName;

  String? Job;

  int? UsersID;

  String? Collage;

  String? Major;

  String? Level;

  String? Nationality;

  int? NationalityID;

  String? photo_url;

  UserModel({this.UsersName, this.Job, this.UsersID, this.Collage, this.Major, this.Level,
  this.Nationality, this.NationalityID, this.photo_url});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      UsersName: map['UsersName'],
      Job: map['Job'],
      UsersID: map['UsersID'],
      Collage: map['Collage'],
      Major: map['Major'],
      Level: map['Level'],
      Nationality: map['Nationality'],
      NationalityID: map['NationalityID'],
      photo_url: map['photo_url'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'UsersName': UsersName,
      'Job': Job,
      'UsersID': UsersID,
      'Collage': Collage,
      'Major': Major,
      'Level': Level,
      'Nationality': Nationality,
      'NationalityID': NationalityID,
      'photo_url':photo_url,
    };
  }
}