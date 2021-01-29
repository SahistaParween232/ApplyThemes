class ThemeEntity {
  String backgroundColor;
  String buttonColor;
  String primaryColor;

  ThemeEntity({this.backgroundColor, this.buttonColor, this.primaryColor});

  ThemeEntity.fromJson(Map<String, dynamic> json) {
    backgroundColor = json['backgroundColor'];
    buttonColor = json['buttonColor'];
    primaryColor = json['primaryColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backgroundColor'] = this.backgroundColor;
    data['buttonColor'] = this.buttonColor;
    data['primaryColor'] = this.primaryColor;
    return data;
  }
}