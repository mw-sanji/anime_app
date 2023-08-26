class Links {
  String? self;
  String? related;

  Links({this.self, this.related});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    related = json['related'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['related'] = this.related;
    return data;
  }
}

class Dimensions {
  Tiny? tiny;
  Tiny? large;
  Tiny? small;

  Dimensions({this.tiny, this.large, this.small});

  Dimensions.fromJson(Map<String, dynamic> json) {
    tiny = json['tiny'] != null ? new Tiny.fromJson(json['tiny']) : null;
    large = json['large'] != null ? new Tiny.fromJson(json['large']) : null;
    small = json['small'] != null ? new Tiny.fromJson(json['small']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tiny != null) {
      data['tiny'] = this.tiny!.toJson();
    }
    if (this.large != null) {
      data['large'] = this.large!.toJson();
    }
    if (this.small != null) {
      data['small'] = this.small!.toJson();
    }
    return data;
  }
}

class Tiny {
  int? width;
  int? height;

  Tiny({this.width, this.height});

  Tiny.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}