

class Registration {
  late final String fullName;
  late final String phoneNumber;
  late final String nidaNumber;
  late final String mkoa;
  late final String wilaya;  


    Registration({
    required this.fullName,
    required this.phoneNumber,
    required this.nidaNumber,
    required this.mkoa,
    required this.wilaya,
  });


Map<String, dynamic> toJson() {
    return {
      "fullName": fullName,
      "phoneNumber": phoneNumber,
      "nidaNumber": nidaNumber,
      "mkoa": mkoa,
      "wilaya": wilaya,
    };
  }

  // Convert from JSON if server sends back data
  factory Registration.fromJson(Map<String, dynamic> json) {
    return Registration(
      fullName: json['fullName'],
      phoneNumber: json['phoneNumber'],
      nidaNumber: json['nidaNumber'],
      mkoa: json['mkoa'],
      wilaya: json['wilaya'],
    );
  }

}