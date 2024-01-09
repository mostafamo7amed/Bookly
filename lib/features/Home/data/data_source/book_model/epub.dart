class Epub {
  bool? isAvailable;
  String? acsTokenLink;

  Epub({this.isAvailable, this.acsTokenLink});

  factory Epub.fromJson(Map<String, dynamic> json) => Epub(
        isAvailable: json['isAvailable']?.toString().contains("true"),
        acsTokenLink: json['acsTokenLink']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (isAvailable != null) 'isAvailable': isAvailable,
        if (acsTokenLink != null) 'acsTokenLink': acsTokenLink,
      };
}
