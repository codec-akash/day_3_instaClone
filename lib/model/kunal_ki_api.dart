class NewApi {
  late final String message;
  late final List<Result> result;

  NewApi({required this.message, required this.result});

  NewApi.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result.add(new Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.result != null) {
      data['result'] = this.result.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  late int blogId;
  late int userId;
  late String preference;
  late String blogTitle;
  late String blogImg;
  late int likes;
  late String blogContent;
  late String createdAt;
  late String modifiedAt;
  late String slug;
  late String category;
  late int viewCounter;
  late int featured;

  Result(
      {required this.blogId,
      required this.userId,
      required this.preference,
      required this.blogTitle,
      required this.blogImg,
      required this.likes,
      required this.blogContent,
      required this.createdAt,
      required this.modifiedAt,
      required this.slug,
      required this.category,
      required this.viewCounter,
      required this.featured});

  Result.fromJson(Map<String, dynamic> json) {
    blogId = json['blogId'];
    userId = json['userId'];
    preference = json['preference'];
    blogTitle = json['blogTitle'];
    blogImg = json['blogImg'];
    likes = json['likes'];
    blogContent = json['blogContent'];
    createdAt = json['createdAt'];
    modifiedAt = json['modifiedAt'];
    slug = json['slug'];
    category = json['category'];
    viewCounter = json['viewCounter'];
    featured = json['featured'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['blogId'] = this.blogId;
    data['userId'] = this.userId;
    data['preference'] = this.preference;
    data['blogTitle'] = this.blogTitle;
    data['blogImg'] = this.blogImg;
    data['likes'] = this.likes;
    data['blogContent'] = this.blogContent;
    data['createdAt'] = this.createdAt;
    data['modifiedAt'] = this.modifiedAt;
    data['slug'] = this.slug;
    data['category'] = this.category;
    data['viewCounter'] = this.viewCounter;
    data['featured'] = this.featured;
    return data;
  }
}
