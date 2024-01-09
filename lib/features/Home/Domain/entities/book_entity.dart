class BookEntitiy {
  String? bookId;
  String? title;
  String? image;
  String? bookAuthor;
  final num? price;
  final num? rating;
  final int pageCount;

  BookEntitiy({
    required this.bookId,
    required this.title,
    required this.bookAuthor,
    required this.image,
    required this.pageCount,
    required this.price,
    required this.rating,
  });
}
