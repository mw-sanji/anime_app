

class Images {
  Images({
      String? imageUrl, 
      String? smallImageUrl, 
      String? mediumImageUrl, 
      String? largeImageUrl, 
      String? maximumImageUrl,}){
    _imageUrl = imageUrl;
    _smallImageUrl = smallImageUrl;
    _mediumImageUrl = mediumImageUrl;
    _largeImageUrl = largeImageUrl;
    _maximumImageUrl = maximumImageUrl;
}

  Images.fromJson(dynamic json) {
    _imageUrl = json['image_url'];
    _smallImageUrl = json['small_image_url'];
    _mediumImageUrl = json['medium_image_url'];
    _largeImageUrl = json['large_image_url'];
    _maximumImageUrl = json['maximum_image_url'];
  }
  String? _imageUrl;
  String? _smallImageUrl;
  String? _mediumImageUrl;
  String? _largeImageUrl;
  String? _maximumImageUrl;

  String? get imageUrl => _imageUrl;
  String? get smallImageUrl => _smallImageUrl;
  String? get mediumImageUrl => _mediumImageUrl;
  String? get largeImageUrl => _largeImageUrl;
  String? get maximumImageUrl => _maximumImageUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image_url'] = _imageUrl;
    map['small_image_url'] = _smallImageUrl;
    map['medium_image_url'] = _mediumImageUrl;
    map['large_image_url'] = _largeImageUrl;
    map['maximum_image_url'] = _maximumImageUrl;
    return map;
  }

}
