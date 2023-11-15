import 'dart:convert';

/// kind : "books#volume"
/// id : "Q-5sDAAAQBAJ"
/// etag : "oYiUGN8U/AY"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/Q-5sDAAAQBAJ"
/// volumeInfo : {"title":"Computer Science","subtitle":"An Interdisciplinary Approach","authors":["Robert Sedgewick","Kevin Wayne"],"publisher":"Addison-Wesley Professional","publishedDate":"2016-06-17","description":"Named a Notable Book in the 21st Annual Best of Computing list by the ACM! Robert Sedgewick and Kevin Wayne’s Computer Science: An Interdisciplinary Approach is the ideal modern introduction to computer science with Java programming for both students and professionals. Taking a broad, applications-based approach, Sedgewick and Wayne teach through important examples from science, mathematics, engineering, finance, and commercial computing. The book demystifies computation, explains its intellectual underpinnings, and covers the essential elements of programming and computational problem solving in today’s environments. The authors begin by introducing basic programming elements such as variables, conditionals, loops, arrays, and I/O. Next, they turn to functions, introducing key modular programming concepts, including components and reuse. They present a modern introduction to object-oriented programming, covering current programming paradigms and approaches to data abstraction. Building on this foundation, Sedgewick and Wayne widen their focus to the broader discipline of computer science. They introduce classical sorting and searching algorithms, fundamental data structures and their application, and scientific techniques for assessing an implementation’s performance. Using abstract models, readers learn to answer basic questions about computation, gaining insight for practical application. Finally, the authors show how machine architecture links the theory of computing to real computers, and to the field’s history and evolution. For each concept, the authors present all the information readers need to build confidence, together with examples that solve intriguing problems. Each chapter contains question-and-answer sections, self-study drills, and challenging problems that demand creative solutions. Companion web site (introcs.cs.princeton.edu/java) contains Extensive supplementary information, including suggested approaches to programming assignments, checklists, and FAQs Graphics and sound libraries Links to program code and test data Solutions to selected exercises Chapter summaries Detailed instructions for installing a Java programming environment Detailed problem sets and projects Companion 20-part series of video lectures is available at informit.com/title/9780134493831","industryIdentifiers":[{"type":"ISBN_13","identifier":"9780134076454"},{"type":"ISBN_10","identifier":"0134076451"}],"readingModes":{"text":true,"image":true},"pageCount":2171,"printType":"BOOK","categories":["Computers"],"averageRating":3,"ratingsCount":1,"maturityRating":"NOT_MATURE","allowAnonLogging":true,"contentVersion":"1.11.12.0.preview.3","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=Q-5sDAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=Q-5sDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com/books?id=Q-5sDAAAQBAJ&printsec=frontcover&dq=computer+science&hl=&cd=1&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=Q-5sDAAAQBAJ&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=Q-5sDAAAQBAJ"}
/// saleInfo : {"country":"US","saleability":"FOR_SALE","isEbook":true,"listPrice":{"amount":63.99,"currencyCode":"USD"},"retailPrice":{"amount":51.19,"currencyCode":"USD"},"buyLink":"https://play.google.com/store/books/details?id=Q-5sDAAAQBAJ&rdid=book-Q-5sDAAAQBAJ&rdot=1&source=gbs_api","offers":[{"finskyOfferType":1,"listPrice":{"amountInMicros":63990000,"currencyCode":"USD"},"retailPrice":{"amountInMicros":51190000,"currencyCode":"USD"},"giftable":true}]}
/// accessInfo : {"country":"US","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED_FOR_ACCESSIBILITY","epub":{"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Computer_Science-sample-epub.acsm?id=Q-5sDAAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Computer_Science-sample-pdf.acsm?id=Q-5sDAAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=Q-5sDAAAQBAJ&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"The book demystifies computation, explains its intellectual underpinnings, and covers the essential elements of programming and computational problem solving in today’s environments."}

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));
String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel {
  BookModel({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) {
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
    _searchInfo = searchInfo;
  }

  BookModel.fromJson(dynamic json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    _saleInfo =
        json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    _accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    _searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }
  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;
  SearchInfo? _searchInfo;
  BookModel copyWith({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) =>
      BookModel(
        kind: kind ?? _kind,
        id: id ?? _id,
        etag: etag ?? _etag,
        selfLink: selfLink ?? _selfLink,
        volumeInfo: volumeInfo ?? _volumeInfo,
        saleInfo: saleInfo ?? _saleInfo,
        accessInfo: accessInfo ?? _accessInfo,
        searchInfo: searchInfo ?? _searchInfo,
      );
  String? get kind => _kind;
  String? get id => _id;
  String? get etag => _etag;
  String? get selfLink => _selfLink;
  VolumeInfo? get volumeInfo => _volumeInfo;
  SaleInfo? get saleInfo => _saleInfo;
  AccessInfo? get accessInfo => _accessInfo;
  SearchInfo? get searchInfo => _searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['id'] = _id;
    map['etag'] = _etag;
    map['selfLink'] = _selfLink;
    if (_volumeInfo != null) {
      map['volumeInfo'] = _volumeInfo?.toJson();
    }
    if (_saleInfo != null) {
      map['saleInfo'] = _saleInfo?.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo?.toJson();
    }
    if (_searchInfo != null) {
      map['searchInfo'] = _searchInfo?.toJson();
    }
    return map;
  }
}

/// textSnippet : "The book demystifies computation, explains its intellectual underpinnings, and covers the essential elements of programming and computational problem solving in today’s environments."

SearchInfo searchInfoFromJson(String str) =>
    SearchInfo.fromJson(json.decode(str));
String searchInfoToJson(SearchInfo data) => json.encode(data.toJson());

class SearchInfo {
  SearchInfo({
    String? textSnippet,
  }) {
    _textSnippet = textSnippet;
  }

  SearchInfo.fromJson(dynamic json) {
    _textSnippet = json['textSnippet'];
  }
  String? _textSnippet;
  SearchInfo copyWith({
    String? textSnippet,
  }) =>
      SearchInfo(
        textSnippet: textSnippet ?? _textSnippet,
      );
  String? get textSnippet => _textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = _textSnippet;
    return map;
  }
}

/// country : "US"
/// viewability : "PARTIAL"
/// embeddable : true
/// publicDomain : false
/// textToSpeechPermission : "ALLOWED_FOR_ACCESSIBILITY"
/// epub : {"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Computer_Science-sample-epub.acsm?id=Q-5sDAAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}
/// pdf : {"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Computer_Science-sample-pdf.acsm?id=Q-5sDAAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}
/// webReaderLink : "http://play.google.com/books/reader?id=Q-5sDAAAQBAJ&hl=&source=gbs_api"
/// accessViewStatus : "SAMPLE"
/// quoteSharingAllowed : false

AccessInfo accessInfoFromJson(String str) =>
    AccessInfo.fromJson(json.decode(str));
String accessInfoToJson(AccessInfo data) => json.encode(data.toJson());

class AccessInfo {
  AccessInfo({
    String? country,
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    Epub? epub,
    Pdf? pdf,
    String? webReaderLink,
    String? accessViewStatus,
    bool? quoteSharingAllowed,
  }) {
    _country = country;
    _viewability = viewability;
    _embeddable = embeddable;
    _publicDomain = publicDomain;
    _textToSpeechPermission = textToSpeechPermission;
    _epub = epub;
    _pdf = pdf;
    _webReaderLink = webReaderLink;
    _accessViewStatus = accessViewStatus;
    _quoteSharingAllowed = quoteSharingAllowed;
  }

  AccessInfo.fromJson(dynamic json) {
    _country = json['country'];
    _viewability = json['viewability'];
    _embeddable = json['embeddable'];
    _publicDomain = json['publicDomain'];
    _textToSpeechPermission = json['textToSpeechPermission'];
    _epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    _pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
    _webReaderLink = json['webReaderLink'];
    _accessViewStatus = json['accessViewStatus'];
    _quoteSharingAllowed = json['quoteSharingAllowed'];
  }
  String? _country;
  String? _viewability;
  bool? _embeddable;
  bool? _publicDomain;
  String? _textToSpeechPermission;
  Epub? _epub;
  Pdf? _pdf;
  String? _webReaderLink;
  String? _accessViewStatus;
  bool? _quoteSharingAllowed;
  AccessInfo copyWith({
    String? country,
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    Epub? epub,
    Pdf? pdf,
    String? webReaderLink,
    String? accessViewStatus,
    bool? quoteSharingAllowed,
  }) =>
      AccessInfo(
        country: country ?? _country,
        viewability: viewability ?? _viewability,
        embeddable: embeddable ?? _embeddable,
        publicDomain: publicDomain ?? _publicDomain,
        textToSpeechPermission:
            textToSpeechPermission ?? _textToSpeechPermission,
        epub: epub ?? _epub,
        pdf: pdf ?? _pdf,
        webReaderLink: webReaderLink ?? _webReaderLink,
        accessViewStatus: accessViewStatus ?? _accessViewStatus,
        quoteSharingAllowed: quoteSharingAllowed ?? _quoteSharingAllowed,
      );
  String? get country => _country;
  String? get viewability => _viewability;
  bool? get embeddable => _embeddable;
  bool? get publicDomain => _publicDomain;
  String? get textToSpeechPermission => _textToSpeechPermission;
  Epub? get epub => _epub;
  Pdf? get pdf => _pdf;
  String? get webReaderLink => _webReaderLink;
  String? get accessViewStatus => _accessViewStatus;
  bool? get quoteSharingAllowed => _quoteSharingAllowed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['viewability'] = _viewability;
    map['embeddable'] = _embeddable;
    map['publicDomain'] = _publicDomain;
    map['textToSpeechPermission'] = _textToSpeechPermission;
    if (_epub != null) {
      map['epub'] = _epub?.toJson();
    }
    if (_pdf != null) {
      map['pdf'] = _pdf?.toJson();
    }
    map['webReaderLink'] = _webReaderLink;
    map['accessViewStatus'] = _accessViewStatus;
    map['quoteSharingAllowed'] = _quoteSharingAllowed;
    return map;
  }
}

/// isAvailable : true
/// acsTokenLink : "http://books.google.com/books/download/Computer_Science-sample-pdf.acsm?id=Q-5sDAAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"

Pdf pdfFromJson(String str) => Pdf.fromJson(json.decode(str));
String pdfToJson(Pdf data) => json.encode(data.toJson());

class Pdf {
  Pdf({
    bool? isAvailable,
    String? acsTokenLink,
  }) {
    _isAvailable = isAvailable;
    _acsTokenLink = acsTokenLink;
  }

  Pdf.fromJson(dynamic json) {
    _isAvailable = json['isAvailable'];
    _acsTokenLink = json['acsTokenLink'];
  }
  bool? _isAvailable;
  String? _acsTokenLink;
  Pdf copyWith({
    bool? isAvailable,
    String? acsTokenLink,
  }) =>
      Pdf(
        isAvailable: isAvailable ?? _isAvailable,
        acsTokenLink: acsTokenLink ?? _acsTokenLink,
      );
  bool? get isAvailable => _isAvailable;
  String? get acsTokenLink => _acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = _isAvailable;
    map['acsTokenLink'] = _acsTokenLink;
    return map;
  }
}

/// isAvailable : true
/// acsTokenLink : "http://books.google.com/books/download/Computer_Science-sample-epub.acsm?id=Q-5sDAAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"

Epub epubFromJson(String str) => Epub.fromJson(json.decode(str));
String epubToJson(Epub data) => json.encode(data.toJson());

class Epub {
  Epub({
    bool? isAvailable,
    String? acsTokenLink,
  }) {
    _isAvailable = isAvailable;
    _acsTokenLink = acsTokenLink;
  }

  Epub.fromJson(dynamic json) {
    _isAvailable = json['isAvailable'];
    _acsTokenLink = json['acsTokenLink'];
  }
  bool? _isAvailable;
  String? _acsTokenLink;
  Epub copyWith({
    bool? isAvailable,
    String? acsTokenLink,
  }) =>
      Epub(
        isAvailable: isAvailable ?? _isAvailable,
        acsTokenLink: acsTokenLink ?? _acsTokenLink,
      );
  bool? get isAvailable => _isAvailable;
  String? get acsTokenLink => _acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = _isAvailable;
    map['acsTokenLink'] = _acsTokenLink;
    return map;
  }
}

/// country : "US"
/// saleability : "FOR_SALE"
/// isEbook : true
/// listPrice : {"amount":63.99,"currencyCode":"USD"}
/// retailPrice : {"amount":51.19,"currencyCode":"USD"}
/// buyLink : "https://play.google.com/store/books/details?id=Q-5sDAAAQBAJ&rdid=book-Q-5sDAAAQBAJ&rdot=1&source=gbs_api"
/// offers : [{"finskyOfferType":1,"listPrice":{"amountInMicros":63990000,"currencyCode":"USD"},"retailPrice":{"amountInMicros":51190000,"currencyCode":"USD"},"giftable":true}]

SaleInfo saleInfoFromJson(String str) => SaleInfo.fromJson(json.decode(str));
String saleInfoToJson(SaleInfo data) => json.encode(data.toJson());

class SaleInfo {
  SaleInfo({
    String? country,
    String? saleability,
    bool? isEbook,
    ListPrice? listPrice,
    RetailPrice? retailPrice,
    String? buyLink,
    List<Offers>? offers,
  }) {
    _country = country;
    _saleability = saleability;
    _isEbook = isEbook;
    _listPrice = listPrice;
    _retailPrice = retailPrice;
    _buyLink = buyLink;
    _offers = offers;
  }

  SaleInfo.fromJson(dynamic json) {
    _country = json['country'];
    _saleability = json['saleability'];
    _isEbook = json['isEbook'];
    _listPrice = json['listPrice'];
    _retailPrice = json['retailPrice'] != null
        ? RetailPrice.fromJson(json['retailPrice'])
        : null;
    _buyLink = json['buyLink'];
    if (json['offers'] != null) {
      _offers = [];
      json['offers'].forEach((v) {
        _offers?.add(Offers.fromJson(v));
      });
    }
  }
  String? _country;
  String? _saleability;
  bool? _isEbook;
  ListPrice? _listPrice;
  RetailPrice? _retailPrice;
  String? _buyLink;
  List<Offers>? _offers;
  SaleInfo copyWith({
    String? country,
    String? saleability,
    bool? isEbook,
    ListPrice? listPrice,
    RetailPrice? retailPrice,
    String? buyLink,
    List<Offers>? offers,
  }) =>
      SaleInfo(
        country: country ?? _country,
        saleability: saleability ?? _saleability,
        isEbook: isEbook ?? _isEbook,
        listPrice: listPrice ?? _listPrice,
        retailPrice: retailPrice ?? _retailPrice,
        buyLink: buyLink ?? _buyLink,
        offers: offers ?? _offers,
      );
  String? get country => _country;
  String? get saleability => _saleability;
  bool? get isEbook => _isEbook;
  ListPrice? get listPrice => _listPrice;
  RetailPrice? get retailPrice => _retailPrice;
  String? get buyLink => _buyLink;
  List<Offers>? get offers => _offers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['saleability'] = _saleability;
    map['isEbook'] = _isEbook;
    map['listPrice'] = _listPrice;
    if (_retailPrice != null) {
      map['retailPrice'] = _retailPrice?.toJson();
    }
    map['buyLink'] = _buyLink;
    if (_offers != null) {
      map['offers'] = _offers?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// finskyOfferType : 1
/// listPrice : {"amountInMicros":63990000,"currencyCode":"USD"}
/// retailPrice : {"amountInMicros":51190000,"currencyCode":"USD"}
/// giftable : true

Offers offersFromJson(String str) => Offers.fromJson(json.decode(str));
String offersToJson(Offers data) => json.encode(data.toJson());

class Offers {
  Offers({
    num? finskyOfferType,
    ListPrice? listPrice,
    RetailPrice? retailPrice,
    bool? giftable,
  }) {
    _finskyOfferType = finskyOfferType;
    _listPrice = listPrice;
    _retailPrice = retailPrice;
    _giftable = giftable;
  }

  Offers.fromJson(dynamic json) {
    _finskyOfferType = json['finskyOfferType'];
    _listPrice = json['listPrice'];
    _retailPrice = json['retailPrice'] != null
        ? RetailPrice.fromJson(json['retailPrice'])
        : null;
    _giftable = json['giftable'];
  }
  num? _finskyOfferType;
  ListPrice? _listPrice;
  RetailPrice? _retailPrice;
  bool? _giftable;
  Offers copyWith({
    num? finskyOfferType,
    ListPrice? listPrice,
    RetailPrice? retailPrice,
    bool? giftable,
  }) =>
      Offers(
        finskyOfferType: finskyOfferType ?? _finskyOfferType,
        listPrice: listPrice ?? _listPrice,
        retailPrice: retailPrice ?? _retailPrice,
        giftable: giftable ?? _giftable,
      );
  num? get finskyOfferType => _finskyOfferType;
  ListPrice? get listPrice => _listPrice;
  RetailPrice? get retailPrice => _retailPrice;
  bool? get giftable => _giftable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['finskyOfferType'] = _finskyOfferType;
    map['listPrice'] = _listPrice;
    if (_retailPrice != null) {
      map['retailPrice'] = _retailPrice?.toJson();
    }
    map['giftable'] = _giftable;
    return map;
  }
}

/// amountInMicros : 51190000
/// currencyCode : "USD"

RetailPrice retailPriceFromJson(String str) =>
    RetailPrice.fromJson(json.decode(str));
String retailPriceToJson(RetailPrice data) => json.encode(data.toJson());

class RetailPrice {
  RetailPrice({
    num? amountInMicros,
    String? currencyCode,
  }) {
    _amountInMicros = amountInMicros;
    _currencyCode = currencyCode;
  }

  RetailPrice.fromJson(dynamic json) {
    _amountInMicros = json['amountInMicros'];
    _currencyCode = json['currencyCode'];
  }
  num? _amountInMicros;
  String? _currencyCode;
  RetailPrice copyWith({
    num? amountInMicros,
    String? currencyCode,
  }) =>
      RetailPrice(
        amountInMicros: amountInMicros ?? _amountInMicros,
        currencyCode: currencyCode ?? _currencyCode,
      );
  num? get amountInMicros => _amountInMicros;
  String? get currencyCode => _currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = _amountInMicros;
    map['currencyCode'] = _currencyCode;
    return map;
  }
}

/// amountInMicros : 63990000
/// currencyCode : "USD"

ListPrice listPriceFromJson(String str) => ListPrice.fromJson(json.decode(str));
String listPriceToJson(ListPrice data) => json.encode(data.toJson());

class ListPrice {
  ListPrice({
    num? amountInMicros,
    String? currencyCode,
  }) {
    _amountInMicros = amountInMicros;
    _currencyCode = currencyCode;
  }

  ListPrice.fromJson(dynamic json) {
    _amountInMicros = json['amountInMicros'];
    _currencyCode = json['currencyCode'];
  }
  num? _amountInMicros;
  String? _currencyCode;
  ListPrice copyWith({
    num? amountInMicros,
    String? currencyCode,
  }) =>
      ListPrice(
        amountInMicros: amountInMicros ?? _amountInMicros,
        currencyCode: currencyCode ?? _currencyCode,
      );
  num? get amountInMicros => _amountInMicros;
  String? get currencyCode => _currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = _amountInMicros;
    map['currencyCode'] = _currencyCode;
    return map;
  }
}

/// amount : 51.19
/// currencyCode : "USD"

RetailPrice retailPriceOffersFromJson(String str) =>
    RetailPrice.fromJson(json.decode(str));
String retailPriceOffersToJson(RetailPrice data) => json.encode(data.toJson());

class RetailPriceOffers {
  RetailPriceOffers({
    num? amount,
    String? currencyCode,
  }) {
    _amount = amount;
    _currencyCode = currencyCode;
  }

  RetailPriceOffers.fromJson(dynamic json) {
    _amount = json['amount'];
    _currencyCode = json['currencyCode'];
  }
  num? _amount;
  String? _currencyCode;
  RetailPriceOffers copyWith({
    num? amount,
    String? currencyCode,
  }) =>
      RetailPriceOffers(
        amount: amount ?? _amount,
        currencyCode: currencyCode ?? _currencyCode,
      );
  num? get amount => _amount;
  String? get currencyCode => _currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = _amount;
    map['currencyCode'] = _currencyCode;
    return map;
  }
}

/// amount : 63.99
/// currencyCode : "USD"

ListPrice listPriceOffersFromJson(String str) => ListPrice.fromJson(json.decode(str));
String listPriceOffersToJson(ListPrice data) => json.encode(data.toJson());

class ListPriceOffers {
  ListPriceOffers({
    num? amount,
    String? currencyCode,
  }) {
    _amount = amount;
    _currencyCode = currencyCode;
  }

  ListPriceOffers.fromJson(dynamic json) {
    _amount = json['amount'];
    _currencyCode = json['currencyCode'];
  }
  num? _amount;
  String? _currencyCode;
  ListPriceOffers copyWith({
    num? amount,
    String? currencyCode,
  }) =>
      ListPriceOffers(
        amount: amount ?? _amount,
        currencyCode: currencyCode ?? _currencyCode,
      );
  num? get amount => _amount;
  String? get currencyCode => _currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = _amount;
    map['currencyCode'] = _currencyCode;
    return map;
  }
}

/// title : "Computer Science"
/// subtitle : "An Interdisciplinary Approach"
/// authors : ["Robert Sedgewick","Kevin Wayne"]
/// publisher : "Addison-Wesley Professional"
/// publishedDate : "2016-06-17"
/// description : "Named a Notable Book in the 21st Annual Best of Computing list by the ACM! Robert Sedgewick and Kevin Wayne’s Computer Science: An Interdisciplinary Approach is the ideal modern introduction to computer science with Java programming for both students and professionals. Taking a broad, applications-based approach, Sedgewick and Wayne teach through important examples from science, mathematics, engineering, finance, and commercial computing. The book demystifies computation, explains its intellectual underpinnings, and covers the essential elements of programming and computational problem solving in today’s environments. The authors begin by introducing basic programming elements such as variables, conditionals, loops, arrays, and I/O. Next, they turn to functions, introducing key modular programming concepts, including components and reuse. They present a modern introduction to object-oriented programming, covering current programming paradigms and approaches to data abstraction. Building on this foundation, Sedgewick and Wayne widen their focus to the broader discipline of computer science. They introduce classical sorting and searching algorithms, fundamental data structures and their application, and scientific techniques for assessing an implementation’s performance. Using abstract models, readers learn to answer basic questions about computation, gaining insight for practical application. Finally, the authors show how machine architecture links the theory of computing to real computers, and to the field’s history and evolution. For each concept, the authors present all the information readers need to build confidence, together with examples that solve intriguing problems. Each chapter contains question-and-answer sections, self-study drills, and challenging problems that demand creative solutions. Companion web site (introcs.cs.princeton.edu/java) contains Extensive supplementary information, including suggested approaches to programming assignments, checklists, and FAQs Graphics and sound libraries Links to program code and test data Solutions to selected exercises Chapter summaries Detailed instructions for installing a Java programming environment Detailed problem sets and projects Companion 20-part series of video lectures is available at informit.com/title/9780134493831"
/// industryIdentifiers : [{"type":"ISBN_13","identifier":"9780134076454"},{"type":"ISBN_10","identifier":"0134076451"}]
/// readingModes : {"text":true,"image":true}
/// pageCount : 2171
/// printType : "BOOK"
/// categories : ["Computers"]
/// averageRating : 3
/// ratingsCount : 1
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : true
/// contentVersion : "1.11.12.0.preview.3"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=Q-5sDAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=Q-5sDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com/books?id=Q-5sDAAAQBAJ&printsec=frontcover&dq=computer+science&hl=&cd=1&source=gbs_api"
/// infoLink : "https://play.google.com/store/books/details?id=Q-5sDAAAQBAJ&source=gbs_api"
/// canonicalVolumeLink : "https://play.google.com/store/books/details?id=Q-5sDAAAQBAJ"

VolumeInfo volumeInfoFromJson(String str) =>
    VolumeInfo.fromJson(json.decode(str));
String volumeInfoToJson(VolumeInfo data) => json.encode(data.toJson());

class VolumeInfo {
  VolumeInfo({
    String? title,
    String? subtitle,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    List<IndustryIdentifiers>? industryIdentifiers,
    ReadingModes? readingModes,
    num? pageCount,
    String? printType,
    List<String>? categories,
    num? averageRating,
    num? ratingsCount,
    String? maturityRating,
    bool? allowAnonLogging,
    String? contentVersion,
    PanelizationSummary? panelizationSummary,
    ImageLinks? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
  }) {
    _title = title;
    _subtitle = subtitle;
    _authors = authors;
    _publisher = publisher;
    _publishedDate = publishedDate;
    _description = description;
    _industryIdentifiers = industryIdentifiers;
    _readingModes = readingModes;
    _pageCount = pageCount;
    _printType = printType;
    _categories = categories;
    _averageRating = averageRating;
    _ratingsCount = ratingsCount;
    _maturityRating = maturityRating;
    _allowAnonLogging = allowAnonLogging;
    _contentVersion = contentVersion;
    _panelizationSummary = panelizationSummary;
    _imageLinks = imageLinks;
    _language = language;
    _previewLink = previewLink;
    _infoLink = infoLink;
    _canonicalVolumeLink = canonicalVolumeLink;
  }

  VolumeInfo.fromJson(dynamic json) {
    _title = json['title'];
    _subtitle = json['subtitle'];
    _authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    _publisher = json['publisher'];
    _publishedDate = json['publishedDate'];
    _description = json['description'];
    if (json['industryIdentifiers'] != null) {
      _industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        _industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    _readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null;
    _pageCount = json['pageCount'];
    _printType = json['printType'];
    _categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    _averageRating = json['averageRating'];
    _ratingsCount = json['ratingsCount'];
    _maturityRating = json['maturityRating'];
    _allowAnonLogging = json['allowAnonLogging'];
    _contentVersion = json['contentVersion'];
    _panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'])
        : null;
    _imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    _language = json['language'];
    _previewLink = json['previewLink'];
    _infoLink = json['infoLink'];
    _canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? _title;
  String? _subtitle;
  List<String>? _authors;
  String? _publisher;
  String? _publishedDate;
  String? _description;
  List<IndustryIdentifiers>? _industryIdentifiers;
  ReadingModes? _readingModes;
  num? _pageCount;
  String? _printType;
  List<String>? _categories;
  num? _averageRating;
  num? _ratingsCount;
  String? _maturityRating;
  bool? _allowAnonLogging;
  String? _contentVersion;
  PanelizationSummary? _panelizationSummary;
  ImageLinks? _imageLinks;
  String? _language;
  String? _previewLink;
  String? _infoLink;
  String? _canonicalVolumeLink;
  VolumeInfo copyWith({
    String? title,
    String? subtitle,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    List<IndustryIdentifiers>? industryIdentifiers,
    ReadingModes? readingModes,
    num? pageCount,
    String? printType,
    List<String>? categories,
    num? averageRating,
    num? ratingsCount,
    String? maturityRating,
    bool? allowAnonLogging,
    String? contentVersion,
    PanelizationSummary? panelizationSummary,
    ImageLinks? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
  }) =>
      VolumeInfo(
        title: title ?? _title,
        subtitle: subtitle ?? _subtitle,
        authors: authors ?? _authors,
        publisher: publisher ?? _publisher,
        publishedDate: publishedDate ?? _publishedDate,
        description: description ?? _description,
        industryIdentifiers: industryIdentifiers ?? _industryIdentifiers,
        readingModes: readingModes ?? _readingModes,
        pageCount: pageCount ?? _pageCount,
        printType: printType ?? _printType,
        categories: categories ?? _categories,
        averageRating: averageRating ?? _averageRating,
        ratingsCount: ratingsCount ?? _ratingsCount,
        maturityRating: maturityRating ?? _maturityRating,
        allowAnonLogging: allowAnonLogging ?? _allowAnonLogging,
        contentVersion: contentVersion ?? _contentVersion,
        panelizationSummary: panelizationSummary ?? _panelizationSummary,
        imageLinks: imageLinks ?? _imageLinks,
        language: language ?? _language,
        previewLink: previewLink ?? _previewLink,
        infoLink: infoLink ?? _infoLink,
        canonicalVolumeLink: canonicalVolumeLink ?? _canonicalVolumeLink,
      );
  String? get title => _title;
  String? get subtitle => _subtitle;
  List<String>? get authors => _authors;
  String? get publisher => _publisher;
  String? get publishedDate => _publishedDate;
  String? get description => _description;
  List<IndustryIdentifiers>? get industryIdentifiers => _industryIdentifiers;
  ReadingModes? get readingModes => _readingModes;
  num? get pageCount => _pageCount;
  String? get printType => _printType;
  List<String>? get categories => _categories;
  num? get averageRating => _averageRating;
  num? get ratingsCount => _ratingsCount;
  String? get maturityRating => _maturityRating;
  bool? get allowAnonLogging => _allowAnonLogging;
  String? get contentVersion => _contentVersion;
  PanelizationSummary? get panelizationSummary => _panelizationSummary;
  ImageLinks? get imageLinks => _imageLinks;
  String? get language => _language;
  String? get previewLink => _previewLink;
  String? get infoLink => _infoLink;
  String? get canonicalVolumeLink => _canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['subtitle'] = _subtitle;
    map['authors'] = _authors;
    map['publisher'] = _publisher;
    map['publishedDate'] = _publishedDate;
    map['description'] = _description;
    if (_industryIdentifiers != null) {
      map['industryIdentifiers'] =
          _industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (_readingModes != null) {
      map['readingModes'] = _readingModes?.toJson();
    }
    map['pageCount'] = _pageCount;
    map['printType'] = _printType;
    map['categories'] = _categories;
    map['averageRating'] = _averageRating;
    map['ratingsCount'] = _ratingsCount;
    map['maturityRating'] = _maturityRating;
    map['allowAnonLogging'] = _allowAnonLogging;
    map['contentVersion'] = _contentVersion;
    if (_panelizationSummary != null) {
      map['panelizationSummary'] = _panelizationSummary?.toJson();
    }
    if (_imageLinks != null) {
      map['imageLinks'] = _imageLinks?.toJson();
    }
    map['language'] = _language;
    map['previewLink'] = _previewLink;
    map['infoLink'] = _infoLink;
    map['canonicalVolumeLink'] = _canonicalVolumeLink;
    return map;
  }
}

/// smallThumbnail : "http://books.google.com/books/content?id=Q-5sDAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"
/// thumbnail : "http://books.google.com/books/content?id=Q-5sDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"

ImageLinks imageLinksFromJson(String str) =>
    ImageLinks.fromJson(json.decode(str));
String imageLinksToJson(ImageLinks data) => json.encode(data.toJson());

class ImageLinks {
  ImageLinks({
    String? smallThumbnail,
    String? thumbnail,
  }) {
    _smallThumbnail = smallThumbnail;
    _thumbnail = thumbnail;
  }

  ImageLinks.fromJson(dynamic json) {
    _smallThumbnail = json['smallThumbnail'];
    _thumbnail = json['thumbnail'];
  }
  String? _smallThumbnail;
  String? _thumbnail;
  ImageLinks copyWith({
    String? smallThumbnail,
    String? thumbnail,
  }) =>
      ImageLinks(
        smallThumbnail: smallThumbnail ?? _smallThumbnail,
        thumbnail: thumbnail ?? _thumbnail,
      );
  String? get smallThumbnail => _smallThumbnail;
  String? get thumbnail => _thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = _smallThumbnail;
    map['thumbnail'] = _thumbnail;
    return map;
  }
}

/// containsEpubBubbles : false
/// containsImageBubbles : false

PanelizationSummary panelizationSummaryFromJson(String str) =>
    PanelizationSummary.fromJson(json.decode(str));
String panelizationSummaryToJson(PanelizationSummary data) =>
    json.encode(data.toJson());

class PanelizationSummary {
  PanelizationSummary({
    bool? containsEpubBubbles,
    bool? containsImageBubbles,
  }) {
    _containsEpubBubbles = containsEpubBubbles;
    _containsImageBubbles = containsImageBubbles;
  }

  PanelizationSummary.fromJson(dynamic json) {
    _containsEpubBubbles = json['containsEpubBubbles'];
    _containsImageBubbles = json['containsImageBubbles'];
  }
  bool? _containsEpubBubbles;
  bool? _containsImageBubbles;
  PanelizationSummary copyWith({
    bool? containsEpubBubbles,
    bool? containsImageBubbles,
  }) =>
      PanelizationSummary(
        containsEpubBubbles: containsEpubBubbles ?? _containsEpubBubbles,
        containsImageBubbles: containsImageBubbles ?? _containsImageBubbles,
      );
  bool? get containsEpubBubbles => _containsEpubBubbles;
  bool? get containsImageBubbles => _containsImageBubbles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['containsEpubBubbles'] = _containsEpubBubbles;
    map['containsImageBubbles'] = _containsImageBubbles;
    return map;
  }
}

/// text : true
/// image : true

ReadingModes readingModesFromJson(String str) =>
    ReadingModes.fromJson(json.decode(str));
String readingModesToJson(ReadingModes data) => json.encode(data.toJson());

class ReadingModes {
  ReadingModes({
    bool? text,
    bool? image,
  }) {
    _text = text;
    _image = image;
  }

  ReadingModes.fromJson(dynamic json) {
    _text = json['text'];
    _image = json['image'];
  }
  bool? _text;
  bool? _image;
  ReadingModes copyWith({
    bool? text,
    bool? image,
  }) =>
      ReadingModes(
        text: text ?? _text,
        image: image ?? _image,
      );
  bool? get text => _text;
  bool? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['image'] = _image;
    return map;
  }
}

/// type : "ISBN_13"
/// identifier : "9780134076454"

IndustryIdentifiers industryIdentifiersFromJson(String str) =>
    IndustryIdentifiers.fromJson(json.decode(str));
String industryIdentifiersToJson(IndustryIdentifiers data) =>
    json.encode(data.toJson());

class IndustryIdentifiers {
  IndustryIdentifiers({
    String? type,
    String? identifier,
  }) {
    _type = type;
    _identifier = identifier;
  }

  IndustryIdentifiers.fromJson(dynamic json) {
    _type = json['type'];
    _identifier = json['identifier'];
  }
  String? _type;
  String? _identifier;
  IndustryIdentifiers copyWith({
    String? type,
    String? identifier,
  }) =>
      IndustryIdentifiers(
        type: type ?? _type,
        identifier: identifier ?? _identifier,
      );
  String? get type => _type;
  String? get identifier => _identifier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['identifier'] = _identifier;
    return map;
  }
}
