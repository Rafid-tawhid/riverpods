class ProfileModel {
  ProfileModel({
      num? id, 
      String? firstName, 
      String? lastName, 
      String? maidenName, 
      num? age, 
      String? gender, 
      String? email, 
      String? phone, 
      String? username, 
      String? password, 
      String? birthDate, 
      String? image, 
      String? bloodGroup, 
      num? height, 
      num? weight, 
      String? eyeColor, 
      Hair? hair, 
      String? ip, 
      Address? address,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _maidenName = maidenName;
    _age = age;
    _gender = gender;
    _email = email;
    _phone = phone;
    _username = username;
    _password = password;
    _birthDate = birthDate;
    _image = image;
    _bloodGroup = bloodGroup;
    _height = height;
    _weight = weight;
    _eyeColor = eyeColor;
    _hair = hair;
    _ip = ip;
    _address = address;
}

  ProfileModel.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _maidenName = json['maidenName'];
    _age = json['age'];
    _gender = json['gender'];
    _email = json['email'];
    _phone = json['phone'];
    _username = json['username'];
    _password = json['password'];
    _birthDate = json['birthDate'];
    _image = json['image'];
    _bloodGroup = json['bloodGroup'];
    _height = json['height'];
    _weight = json['weight'];
    _eyeColor = json['eyeColor'];
    _hair = json['hair'] != null ? Hair.fromJson(json['hair']) : null;
    _ip = json['ip'];
    _address = json['address'] != null ? Address.fromJson(json['address']) : null;
  }
  num? _id;
  String? _firstName;
  String? _lastName;
  String? _maidenName;
  num? _age;
  String? _gender;
  String? _email;
  String? _phone;
  String? _username;
  String? _password;
  String? _birthDate;
  String? _image;
  String? _bloodGroup;
  num? _height;
  num? _weight;
  String? _eyeColor;
  Hair? _hair;
  String? _ip;
  Address? _address;
ProfileModel copyWith({  num? id,
  String? firstName,
  String? lastName,
  String? maidenName,
  num? age,
  String? gender,
  String? email,
  String? phone,
  String? username,
  String? password,
  String? birthDate,
  String? image,
  String? bloodGroup,
  num? height,
  num? weight,
  String? eyeColor,
  Hair? hair,
  String? ip,
  Address? address,
}) => ProfileModel(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  maidenName: maidenName ?? _maidenName,
  age: age ?? _age,
  gender: gender ?? _gender,
  email: email ?? _email,
  phone: phone ?? _phone,
  username: username ?? _username,
  password: password ?? _password,
  birthDate: birthDate ?? _birthDate,
  image: image ?? _image,
  bloodGroup: bloodGroup ?? _bloodGroup,
  height: height ?? _height,
  weight: weight ?? _weight,
  eyeColor: eyeColor ?? _eyeColor,
  hair: hair ?? _hair,
  ip: ip ?? _ip,
  address: address ?? _address,
);
  num? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get maidenName => _maidenName;
  num? get age => _age;
  String? get gender => _gender;
  String? get email => _email;
  String? get phone => _phone;
  String? get username => _username;
  String? get password => _password;
  String? get birthDate => _birthDate;
  String? get image => _image;
  String? get bloodGroup => _bloodGroup;
  num? get height => _height;
  num? get weight => _weight;
  String? get eyeColor => _eyeColor;
  Hair? get hair => _hair;
  String? get ip => _ip;
  Address? get address => _address;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['maidenName'] = _maidenName;
    map['age'] = _age;
    map['gender'] = _gender;
    map['email'] = _email;
    map['phone'] = _phone;
    map['username'] = _username;
    map['password'] = _password;
    map['birthDate'] = _birthDate;
    map['image'] = _image;
    map['bloodGroup'] = _bloodGroup;
    map['height'] = _height;
    map['weight'] = _weight;
    map['eyeColor'] = _eyeColor;
    if (_hair != null) {
      map['hair'] = _hair?.toJson();
    }
    map['ip'] = _ip;
    if (_address != null) {
      map['address'] = _address?.toJson();
    }
    return map;
  }

}

class Address {
  Address({
      String? address, 
      String? city, 
      String? state, 
      String? stateCode, 
      String? postalCode, 
      Coordinates? coordinates, 
      String? country,}){
    _address = address;
    _city = city;
    _state = state;
    _stateCode = stateCode;
    _postalCode = postalCode;
    _coordinates = coordinates;
    _country = country;
}

  Address.fromJson(dynamic json) {
    _address = json['address'];
    _city = json['city'];
    _state = json['state'];
    _stateCode = json['stateCode'];
    _postalCode = json['postalCode'];
    _coordinates = json['coordinates'] != null ? Coordinates.fromJson(json['coordinates']) : null;
    _country = json['country'];
  }
  String? _address;
  String? _city;
  String? _state;
  String? _stateCode;
  String? _postalCode;
  Coordinates? _coordinates;
  String? _country;
Address copyWith({  String? address,
  String? city,
  String? state,
  String? stateCode,
  String? postalCode,
  Coordinates? coordinates,
  String? country,
}) => Address(  address: address ?? _address,
  city: city ?? _city,
  state: state ?? _state,
  stateCode: stateCode ?? _stateCode,
  postalCode: postalCode ?? _postalCode,
  coordinates: coordinates ?? _coordinates,
  country: country ?? _country,
);
  String? get address => _address;
  String? get city => _city;
  String? get state => _state;
  String? get stateCode => _stateCode;
  String? get postalCode => _postalCode;
  Coordinates? get coordinates => _coordinates;
  String? get country => _country;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = _address;
    map['city'] = _city;
    map['state'] = _state;
    map['stateCode'] = _stateCode;
    map['postalCode'] = _postalCode;
    if (_coordinates != null) {
      map['coordinates'] = _coordinates?.toJson();
    }
    map['country'] = _country;
    return map;
  }

}

class Coordinates {
  Coordinates({
      num? lat, 
      num? lng,}){
    _lat = lat;
    _lng = lng;
}

  Coordinates.fromJson(dynamic json) {
    _lat = json['lat'];
    _lng = json['lng'];
  }
  num? _lat;
  num? _lng;
Coordinates copyWith({  num? lat,
  num? lng,
}) => Coordinates(  lat: lat ?? _lat,
  lng: lng ?? _lng,
);
  num? get lat => _lat;
  num? get lng => _lng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = _lat;
    map['lng'] = _lng;
    return map;
  }

}

class Hair {
  Hair({
      String? color, 
      String? type,}){
    _color = color;
    _type = type;
}

  Hair.fromJson(dynamic json) {
    _color = json['color'];
    _type = json['type'];
  }
  String? _color;
  String? _type;
Hair copyWith({  String? color,
  String? type,
}) => Hair(  color: color ?? _color,
  type: type ?? _type,
);
  String? get color => _color;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['color'] = _color;
    map['type'] = _type;
    return map;
  }

}