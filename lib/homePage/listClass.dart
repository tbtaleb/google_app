class ListClass {
  ListClass({
    this.name = '',
    this.author = '',
    this.likes = '',
    this.img = '',
  });

  String name;
  String author;
  String likes;
  String img;

  factory ListClass.fromJson(Map<String, dynamic> json) => ListClass(
        name: json['name'],
        author: json['author'],
        likes: json['likes'],
        img: json['img'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'author': author,
        'likes': likes,
        'img': img,
      };
}
