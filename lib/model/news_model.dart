class NewResponse {
  int _status;
  Response _response;

  NewResponse({int status, Response response}) {
    this._status = status;
    this._response = response;
  }

  int get status => _status;
  set status(int status) => _status = status;
  Response get response => _response;
  set response(Response response) => _response = response;

  NewResponse.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _response = json['response'] != null
        ? new Response.fromJson(json['response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._status;
    if (this._response != null) {
      data['response'] = this._response.toJson();
    }
    return data;
  }
}

class Response {
  List<News> _news;

  Response({List<News> news}) {
    this._news = news;
  }

  List<News> get news => _news;
  set news(List<News> news) => _news = news;

  Response.fromJson(Map<String, dynamic> json) {
    if (json['news'] != null) {
      _news = new List<News>();
      json['news'].forEach((v) {
        _news.add(new News.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._news != null) {
      data['news'] = this._news.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class News {
  int _id;
  String _feed;
  String _title;
  String _thumbImg;
  String _detailUrl;
  String _description;
  String _author;
  String _publishDate;
  String _createdAt;
  String _updatedAt;

  News(
      {int id,
        String feed,
        String title,
        String thumbImg,
        String detailUrl,
        String description,
        String author,
        String publishDate,
        String createdAt,
        String updatedAt}) {
    this._id = id;
    this._feed = feed;
    this._title = title;
    this._thumbImg = thumbImg;
    this._detailUrl = detailUrl;
    this._description = description;
    this._author = author;
    this._publishDate = publishDate;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get feed => _feed;
  set feed(String feed) => _feed = feed;
  String get title => _title;
  set title(String title) => _title = title;
  String get thumbImg => _thumbImg;
  set thumbImg(String thumbImg) => _thumbImg = thumbImg;
  String get detailUrl => _detailUrl;
  set detailUrl(String detailUrl) => _detailUrl = detailUrl;
  String get description => _description;
  set description(String description) => _description = description;
  String get author => _author;
  set author(String author) => _author = author;
  String get publishDate => _publishDate;
  set publishDate(String publishDate) => _publishDate = publishDate;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;

  News.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _feed = json['feed'];
    _title = json['title'];
    _thumbImg = json['thumb_img'];
    _detailUrl = json['detail_url'];
    _description = json['description'];
    _author = json['author'];
    _publishDate = json['publish_date'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['feed'] = this._feed;
    data['title'] = this._title;
    data['thumb_img'] = this._thumbImg;
    data['detail_url'] = this._detailUrl;
    data['description'] = this._description;
    data['author'] = this._author;
    data['publish_date'] = this._publishDate;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}