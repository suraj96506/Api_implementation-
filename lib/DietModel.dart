class Userlist {
  String name;
  String image;
  String protein;
  int calorie;
  String carbs;
  String fats;
  List<String> ingredients;

  Userlist(
      {this.name,
      this.image,
      this.protein,
      this.calorie,
      this.carbs,
      this.fats,
      this.ingredients});

  Userlist.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    protein = json['protein'];
    calorie = json['calorie'];
    carbs = json['carbs'];
    fats = json['fats'];
    ingredients = json['ingredients'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['protein'] = this.protein;
    data['calorie'] = this.calorie;
    data['carbs'] = this.carbs;
    data['fats'] = this.fats;
    data['ingredients'] = this.ingredients;
    return data;
  }
}
