class Pdf {
  bool? isAvailable;
  String? acsTokenLink;

  Pdf({this.isAvailable, this.acsTokenLink});

  factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
        isAvailable: json['isAvailable']?.toString().contains("true"),
        acsTokenLink: json['acsTokenLink']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (isAvailable != null) 'isAvailable': isAvailable,
        if (acsTokenLink != null) 'acsTokenLink': acsTokenLink,
      };
}
