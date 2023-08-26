class AnimeModel {
  AnimeModel({
      Pagination? pagination, 
      List<Data>? data, 
      Links? links, 
      Meta? meta,}){
    _pagination = pagination;
    _data = data;
    _links = links;
    _meta = meta;
}

  AnimeModel.fromJson(dynamic json) {
    _pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  Pagination? _pagination;
  List<Data>? _data;
  Links? _links;
  Meta? _meta;

  Pagination? get pagination => _pagination;
  List<Data>? get data => _data;
  Links? get links => _links;
  Meta? get meta => _meta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_pagination != null) {
      map['pagination'] = _pagination?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    return map;
  }

}

class Meta {
  Meta({
      num? currentPage, 
      num? from, 
      num? lastPage, 
      List<Links>? links, 
      String? path, 
      num? perPage, 
      num? to, 
      num? total,}){
    _currentPage = currentPage;
    _from = from;
    _lastPage = lastPage;
    _links = links;
    _path = path;
    _perPage = perPage;
    _to = to;
    _total = total;
}

  Meta.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    _from = json['from'];
    _lastPage = json['last_page'];
    if (json['links'] != null) {
      _links = [];
      json['links'].forEach((v) {
        _links?.add(Links.fromJson(v));
      });
    }
    _path = json['path'];
    _perPage = json['per_page'];
    _to = json['to'];
    _total = json['total'];
  }
  num? _currentPage;
  num? _from;
  num? _lastPage;
  List<Links>? _links;
  String? _path;
  num? _perPage;
  num? _to;
  num? _total;

  num? get currentPage => _currentPage;
  num? get from => _from;
  num? get lastPage => _lastPage;
  List<Links>? get links => _links;
  String? get path => _path;
  num? get perPage => _perPage;
  num? get to => _to;
  num? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    map['from'] = _from;
    map['last_page'] = _lastPage;
    if (_links != null) {
      map['links'] = _links?.map((v) => v.toJson()).toList();
    }
    map['path'] = _path;
    map['per_page'] = _perPage;
    map['to'] = _to;
    map['total'] = _total;
    return map;
  }

}

class Links {
  Links({
      dynamic url, 
      String? label, 
      bool? active,}){
    _url = url;
    _label = label;
    _active = active;
}

  Links.fromJson(dynamic json) {
    _url = json['url'];
    _label = json['label'];
    _active = json['active'];
  }
  dynamic _url;
  String? _label;
  bool? _active;

  dynamic get url => _url;
  String? get label => _label;
  bool? get active => _active;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['label'] = _label;
    map['active'] = _active;
    return map;
  }

}



class Data {
  Data({
      num? malId, 
      String? url, 
      Images? images, 
      Trailer? trailer, 
      bool? approved, 
      List<Titles>? titles, 
      String? title, 
      String? titleEnglish, 
      String? titleJapanese, 
      List<String>? titleSynonyms, 
      String? type, 
      String? source, 
      num? episodes, 
      String? status, 
      bool? airing, 
      Aired? aired, 
      String? duration, 
      String? rating, 
      num? score, 
      num? scoredBy, 
      num? rank, 
      num? popularity, 
      num? members, 
      num? favorites, 
      String? synopsis, 
      dynamic background, 
      String? season, 
      num? year, 
      Broadcast? broadcast, 
      List<Producers>? producers, 
      List<Licensors>? licensors, 
      List<Studios>? studios, 
      List<Genres>? genres, 
      List<dynamic>? explicitGenres, 
      List<Themes>? themes, 
      List<Demographics>? demographics,}){
    _malId = malId;
    _url = url;
    _images = images;
    _trailer = trailer;
    _approved = approved;
    _titles = titles;
    _title = title;
    _titleEnglish = titleEnglish;
    _titleJapanese = titleJapanese;
    _titleSynonyms = titleSynonyms;
    _type = type;
    _source = source;
    _episodes = episodes;
    _status = status;
    _airing = airing;
    _aired = aired;
    _duration = duration;
    _rating = rating;
    _score = score;
    _scoredBy = scoredBy;
    _rank = rank;
    _popularity = popularity;
    _members = members;
    _favorites = favorites;
    _synopsis = synopsis;
    _background = background;
    _season = season;
    _year = year;
    _broadcast = broadcast;
    _producers = producers;
    _licensors = licensors;
    _studios = studios;
    _genres = genres;
    _explicitGenres = explicitGenres;
    _themes = themes;
    _demographics = demographics;
}

  Data.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _url = json['url'];
    _images = json['images'] != null ? Images.fromJson(json['images']) : null;
    _trailer = json['trailer'] != null ? Trailer.fromJson(json['trailer']) : null;
    _approved = json['approved'];
    if (json['titles'] != null) {
      _titles = [];
      json['titles'].forEach((v) {
        _titles?.add(Titles.fromJson(v));
      });
    }
    _title = json['title'];
    _titleEnglish = json['title_english'];
    _titleJapanese = json['title_japanese'];
    _titleSynonyms = json['title_synonyms'] != null ? json['title_synonyms'].cast<String>() : [];
    _type = json['type'];
    _source = json['source'];
    _episodes = json['episodes'];
    _status = json['status'];
    _airing = json['airing'];
    _aired = json['aired'] != null ? Aired.fromJson(json['aired']) : null;
    _duration = json['duration'];
    _rating = json['rating'];
    _score = json['score'];
    _scoredBy = json['scored_by'];
    _rank = json['rank'];
    _popularity = json['popularity'];
    _members = json['members'];
    _favorites = json['favorites'];
    _synopsis = json['synopsis'];
    _background = json['background'];
    _season = json['season'];
    _year = json['year'];
    _broadcast = json['broadcast'] != null ? Broadcast.fromJson(json['broadcast']) : null;
    if (json['producers'] != null) {
      _producers = [];
      json['producers'].forEach((v) {
        _producers?.add(Producers.fromJson(v));
      });
    }
    if (json['licensors'] != null) {
      _licensors = [];
      json['licensors'].forEach((v) {
        _licensors?.add(Licensors.fromJson(v));
      });
    }
    if (json['studios'] != null) {
      _studios = [];
      json['studios'].forEach((v) {
        _studios?.add(Studios.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
    
    if (json['themes'] != null) {
      _themes = [];
      json['themes'].forEach((v) {
        _themes?.add(Themes.fromJson(v));
      });
    }
    if (json['demographics'] != null) {
      _demographics = [];
      json['demographics'].forEach((v) {
        _demographics?.add(Demographics.fromJson(v));
      });
    }
  }
  num? _malId;
  String? _url;
  Images? _images;
  Trailer? _trailer;
  bool? _approved;
  List<Titles>? _titles;
  String? _title;
  String? _titleEnglish;
  String? _titleJapanese;
  List<String>? _titleSynonyms;
  String? _type;
  String? _source;
  num? _episodes;
  String? _status;
  bool? _airing;
  Aired? _aired;
  String? _duration;
  String? _rating;
  num? _score;
  num? _scoredBy;
  num? _rank;
  num? _popularity;
  num? _members;
  num? _favorites;
  String? _synopsis;
  dynamic _background;
  String? _season;
  num? _year;
  Broadcast? _broadcast;
  List<Producers>? _producers;
  List<Licensors>? _licensors;
  List<Studios>? _studios;
  List<Genres>? _genres;
  List<dynamic>? _explicitGenres;
  List<Themes>? _themes;
  List<Demographics>? _demographics;

  num? get malId => _malId;
  String? get url => _url;
  Images? get images => _images;
  Trailer? get trailer => _trailer;
  bool? get approved => _approved;
  List<Titles>? get titles => _titles;
  String? get title => _title;
  String? get titleEnglish => _titleEnglish;
  String? get titleJapanese => _titleJapanese;
  List<String>? get titleSynonyms => _titleSynonyms;
  String? get type => _type;
  String? get source => _source;
  num? get episodes => _episodes;
  String? get status => _status;
  bool? get airing => _airing;
  Aired? get aired => _aired;
  String? get duration => _duration;
  String? get rating => _rating;
  num? get score => _score;
  num? get scoredBy => _scoredBy;
  num? get rank => _rank;
  num? get popularity => _popularity;
  num? get members => _members;
  num? get favorites => _favorites;
  String? get synopsis => _synopsis;
  dynamic get background => _background;
  String? get season => _season;
  num? get year => _year;
  Broadcast? get broadcast => _broadcast;
  List<Producers>? get producers => _producers;
  List<Licensors>? get licensors => _licensors;
  List<Studios>? get studios => _studios;
  List<Genres>? get genres => _genres;
  List<dynamic>? get explicitGenres => _explicitGenres;
  List<Themes>? get themes => _themes;
  List<Demographics>? get demographics => _demographics;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['url'] = _url;
    if (_images != null) {
      map['images'] = _images?.toJson();
    }
    if (_trailer != null) {
      map['trailer'] = _trailer?.toJson();
    }
    map['approved'] = _approved;
    if (_titles != null) {
      map['titles'] = _titles?.map((v) => v.toJson()).toList();
    }
    map['title'] = _title;
    map['title_english'] = _titleEnglish;
    map['title_japanese'] = _titleJapanese;
    map['title_synonyms'] = _titleSynonyms;
    map['type'] = _type;
    map['source'] = _source;
    map['episodes'] = _episodes;
    map['status'] = _status;
    map['airing'] = _airing;
    if (_aired != null) {
      map['aired'] = _aired?.toJson();
    }
    map['duration'] = _duration;
    map['rating'] = _rating;
    map['score'] = _score;
    map['scored_by'] = _scoredBy;
    map['rank'] = _rank;
    map['popularity'] = _popularity;
    map['members'] = _members;
    map['favorites'] = _favorites;
    map['synopsis'] = _synopsis;
    map['background'] = _background;
    map['season'] = _season;
    map['year'] = _year;
    if (_broadcast != null) {
      map['broadcast'] = _broadcast?.toJson();
    }
    if (_producers != null) {
      map['producers'] = _producers?.map((v) => v.toJson()).toList();
    }
    if (_licensors != null) {
      map['licensors'] = _licensors?.map((v) => v.toJson()).toList();
    }
    if (_studios != null) {
      map['studios'] = _studios?.map((v) => v.toJson()).toList();
    }
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    if (_explicitGenres != null) {
      map['explicit_genres'] = _explicitGenres?.map((v) => v.toJson()).toList();
    }
    if (_themes != null) {
      map['themes'] = _themes?.map((v) => v.toJson()).toList();
    }
    if (_demographics != null) {
      map['demographics'] = _demographics?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Demographics {
  Demographics({
      num? malId, 
      String? type, 
      String? name, 
      String? url,}){
    _malId = malId;
    _type = type;
    _name = name;
    _url = url;
}

  Demographics.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _type = json['type'];
    _name = json['name'];
    _url = json['url'];
  }
  num? _malId;
  String? _type;
  String? _name;
  String? _url;

  num? get malId => _malId;
  String? get type => _type;
  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['type'] = _type;
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

class Themes {
  Themes({
      num? malId, 
      String? type, 
      String? name, 
      String? url,}){
    _malId = malId;
    _type = type;
    _name = name;
    _url = url;
}

  Themes.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _type = json['type'];
    _name = json['name'];
    _url = json['url'];
  }
  num? _malId;
  String? _type;
  String? _name;
  String? _url;

  num? get malId => _malId;
  String? get type => _type;
  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['type'] = _type;
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

class Genres {
  Genres({
      num? malId, 
      String? type, 
      String? name, 
      String? url,}){
    _malId = malId;
    _type = type;
    _name = name;
    _url = url;
}

  Genres.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _type = json['type'];
    _name = json['name'];
    _url = json['url'];
  }
  num? _malId;
  String? _type;
  String? _name;
  String? _url;

  num? get malId => _malId;
  String? get type => _type;
  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['type'] = _type;
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

class Studios {
  Studios({
      num? malId, 
      String? type, 
      String? name, 
      String? url,}){
    _malId = malId;
    _type = type;
    _name = name;
    _url = url;
}

  Studios.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _type = json['type'];
    _name = json['name'];
    _url = json['url'];
  }
  num? _malId;
  String? _type;
  String? _name;
  String? _url;

  num? get malId => _malId;
  String? get type => _type;
  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['type'] = _type;
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

class Licensors {
  Licensors({
      num? malId, 
      String? type, 
      String? name, 
      String? url,}){
    _malId = malId;
    _type = type;
    _name = name;
    _url = url;
}

  Licensors.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _type = json['type'];
    _name = json['name'];
    _url = json['url'];
  }
  num? _malId;
  String? _type;
  String? _name;
  String? _url;

  num? get malId => _malId;
  String? get type => _type;
  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['type'] = _type;
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

class Producers {
  Producers({
      num? malId, 
      String? type, 
      String? name, 
      String? url,}){
    _malId = malId;
    _type = type;
    _name = name;
    _url = url;
}

  Producers.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _type = json['type'];
    _name = json['name'];
    _url = json['url'];
  }
  num? _malId;
  String? _type;
  String? _name;
  String? _url;

  num? get malId => _malId;
  String? get type => _type;
  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['type'] = _type;
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

class Broadcast {
  Broadcast({
      String? day, 
      String? time, 
      String? timezone, 
      String? string,}){
    _day = day;
    _time = time;
    _timezone = timezone;
    _string = string;
}

  Broadcast.fromJson(dynamic json) {
    _day = json['day'];
    _time = json['time'];
    _timezone = json['timezone'];
    _string = json['string'];
  }
  String? _day;
  String? _time;
  String? _timezone;
  String? _string;

  String? get day => _day;
  String? get time => _time;
  String? get timezone => _timezone;
  String? get string => _string;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['time'] = _time;
    map['timezone'] = _timezone;
    map['string'] = _string;
    return map;
  }

}

class Aired {
  Aired({
      String? from, 
      String? to, 
      Prop? prop, 
      String? string,}){
    _from = from;
    _to = to;
    _prop = prop;
    _string = string;
}

  Aired.fromJson(dynamic json) {
    _from = json['from'];
    _to = json['to'];
    _prop = json['prop'] != null ? Prop.fromJson(json['prop']) : null;
    _string = json['string'];
  }
  String? _from;
  String? _to;
  Prop? _prop;
  String? _string;

  String? get from => _from;
  String? get to => _to;
  Prop? get prop => _prop;
  String? get string => _string;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['from'] = _from;
    map['to'] = _to;
    if (_prop != null) {
      map['prop'] = _prop?.toJson();
    }
    map['string'] = _string;
    return map;
  }

}

class Prop {
  Prop({
      From? from, 
      To? to,}){
    _from = from;
    _to = to;
}

  Prop.fromJson(dynamic json) {
    _from = json['from'] != null ? From.fromJson(json['from']) : null;
    _to = json['to'] != null ? To.fromJson(json['to']) : null;
  }
  From? _from;
  To? _to;

  From? get from => _from;
  To? get to => _to;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_from != null) {
      map['from'] = _from?.toJson();
    }
    if (_to != null) {
      map['to'] = _to?.toJson();
    }
    return map;
  }

}

class To {
  To({
      num? day, 
      num? month, 
      num? year,}){
    _day = day;
    _month = month;
    _year = year;
}

  To.fromJson(dynamic json) {
    _day = json['day'];
    _month = json['month'];
    _year = json['year'];
  }
  num? _day;
  num? _month;
  num? _year;

  num? get day => _day;
  num? get month => _month;
  num? get year => _year;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['month'] = _month;
    map['year'] = _year;
    return map;
  }

}

class From {
  From({
      num? day, 
      num? month, 
      num? year,}){
    _day = day;
    _month = month;
    _year = year;
}

  From.fromJson(dynamic json) {
    _day = json['day'];
    _month = json['month'];
    _year = json['year'];
  }
  num? _day;
  num? _month;
  num? _year;

  num? get day => _day;
  num? get month => _month;
  num? get year => _year;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['month'] = _month;
    map['year'] = _year;
    return map;
  }

}

class Titles {
  Titles({
      String? type, 
      String? title,}){
    _type = type;
    _title = title;
}

  Titles.fromJson(dynamic json) {
    _type = json['type'];
    _title = json['title'];
  }
  String? _type;
  String? _title;

  String? get type => _type;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['title'] = _title;
    return map;
  }

}

class Trailer {
  Trailer({
      String? youtubeId, 
      String? url, 
      String? embedUrl, 
      Images? images,}){
    _youtubeId = youtubeId;
    _url = url;
    _embedUrl = embedUrl;
    _images = images;
}

  Trailer.fromJson(dynamic json) {
    _youtubeId = json['youtube_id'];
    _url = json['url'];
    _embedUrl = json['embed_url'];
    _images = json['images'] != null ? Images.fromJson(json['images']) : null;
  }
  String? _youtubeId;
  String? _url;
  String? _embedUrl;
  Images? _images;

  String? get youtubeId => _youtubeId;
  String? get url => _url;
  String? get embedUrl => _embedUrl;
  Images? get images => _images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['youtube_id'] = _youtubeId;
    map['url'] = _url;
    map['embed_url'] = _embedUrl;
    if (_images != null) {
      map['images'] = _images?.toJson();
    }
    return map;
  }

}

class Images {
  Images({
      Jpg? jpg, 
      Webp? webp,}){
    _jpg = jpg;
    _webp = webp;
}

  Images.fromJson(dynamic json) {
    _jpg = json['jpg'] != null ? Jpg.fromJson(json['jpg']) : null;
    _webp = json['webp'] != null ? Webp.fromJson(json['webp']) : null;
  }
  Jpg? _jpg;
  Webp? _webp;

  Jpg? get jpg => _jpg;
  Webp? get webp => _webp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_jpg != null) {
      map['jpg'] = _jpg?.toJson();
    }
    if (_webp != null) {
      map['webp'] = _webp?.toJson();
    }
    return map;
  }

}

class Jpg {
  Jpg({
      String? imageUrl, 
      String? smallImageUrl, 
      String? largeImageUrl,}){
    _imageUrl = imageUrl;
    _smallImageUrl = smallImageUrl;
    _largeImageUrl = largeImageUrl;
}

  Jpg.fromJson(dynamic json) {
    _imageUrl = json['image_url'];
    _smallImageUrl = json['small_image_url'];
    _largeImageUrl = json['large_image_url'];
  }
  String? _imageUrl;
  String? _smallImageUrl;
  String? _largeImageUrl;

  String? get imageUrl => _imageUrl;
  String? get smallImageUrl => _smallImageUrl;
  String? get largeImageUrl => _largeImageUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image_url'] = _imageUrl;
    map['small_image_url'] = _smallImageUrl;
    map['large_image_url'] = _largeImageUrl;
    return map;
  }

}

class Webp {
  Webp({
      String? imageUrl, 
      String? smallImageUrl, 
      String? largeImageUrl,}){
    _imageUrl = imageUrl;
    _smallImageUrl = smallImageUrl;
    _largeImageUrl = largeImageUrl;
}

  Webp.fromJson(dynamic json) {
    _imageUrl = json['image_url'];
    _smallImageUrl = json['small_image_url'];
    _largeImageUrl = json['large_image_url'];
  }
  String? _imageUrl;
  String? _smallImageUrl;
  String? _largeImageUrl;

  String? get imageUrl => _imageUrl;
  String? get smallImageUrl => _smallImageUrl;
  String? get largeImageUrl => _largeImageUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image_url'] = _imageUrl;
    map['small_image_url'] = _smallImageUrl;
    map['large_image_url'] = _largeImageUrl;
    return map;
  }

}






class Pagination {
  Pagination({
      num? lastVisiblePage, 
      bool? hasNextPage, 
      num? currentPage, 
      Items? items,}){
    _lastVisiblePage = lastVisiblePage;
    _hasNextPage = hasNextPage;
    _currentPage = currentPage;
    _items = items;
}

  Pagination.fromJson(dynamic json) {
    _lastVisiblePage = json['last_visible_page'];
    _hasNextPage = json['has_next_page'];
    _currentPage = json['current_page'];
    _items = json['items'] != null ? Items.fromJson(json['items']) : null;
  }
  num? _lastVisiblePage;
  bool? _hasNextPage;
  num? _currentPage;
  Items? _items;

  num? get lastVisiblePage => _lastVisiblePage;
  bool? get hasNextPage => _hasNextPage;
  num? get currentPage => _currentPage;
  Items? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['last_visible_page'] = _lastVisiblePage;
    map['has_next_page'] = _hasNextPage;
    map['current_page'] = _currentPage;
    if (_items != null) {
      map['items'] = _items?.toJson();
    }
    return map;
  }

}

class Items {
  Items({
      num? count, 
      num? total, 
      num? perPage,}){
    _count = count;
    _total = total;
    _perPage = perPage;
}

  Items.fromJson(dynamic json) {
    _count = json['count'];
    _total = json['total'];
    _perPage = json['per_page'];
  }
  num? _count;
  num? _total;
  num? _perPage;

  num? get count => _count;
  num? get total => _total;
  num? get perPage => _perPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = _count;
    map['total'] = _total;
    map['per_page'] = _perPage;
    return map;
  }

}