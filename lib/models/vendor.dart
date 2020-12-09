/// _id : "5fb9a12fafd7cf30d85265a4"
/// username : "an.der.grenze"
/// password : "%uUwkqH6^6"
/// createdBy : "5fb99482939c744a435a4b0f"
/// created : "2020-11-21T23:22:23.710Z"
/// lastModifiedBy : "5fb99482939c744a435a4b0f"
/// lastModified : "2020-11-21T23:22:23.710Z"
/// id : "5fb9a12fafd7cf30d85265a4"
/// new : false

class Vendor {
  String _id;
  String _username;
  String _password;
  String _createdBy;
  String _created;
  String _lastModifiedBy;
  String _lastModified;
  bool _new;

  String get username => _username;
  String get password => _password;
  String get createdBy => _createdBy;
  String get created => _created;
  String get lastModifiedBy => _lastModifiedBy;
  String get lastModified => _lastModified;
  String get id => _id;
  bool get nnew => _new;

  Vendor({
      String id, 
      String username, 
      String password, 
      String createdBy, 
      String created, 
      String lastModifiedBy, 
      String lastModified,
      bool nnew}){
    _id = id;
    _username = username;
    _password = password;
    _createdBy = createdBy;
    _created = created;
    _lastModifiedBy = lastModifiedBy;
    _lastModified = lastModified;
    _id = id;
    _new = nnew;
}

  Vendor.fromJson(dynamic json) {
    _username = json["username"];
    _password = json["password"];
    _createdBy = json["createdBy"];
    _created = json["created"];
    _lastModifiedBy = json["lastModifiedBy"];
    _lastModified = json["lastModified"];
    _id = json["id"];
    _new = json["new"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["username"] = _username;
    map["password"] = _password;
    map["createdBy"] = _createdBy;
    map["created"] = _created;
    map["lastModifiedBy"] = _lastModifiedBy;
    map["lastModified"] = _lastModified;
    map["id"] = _id;
    map["new"] = _new;
    return map;
  }

}