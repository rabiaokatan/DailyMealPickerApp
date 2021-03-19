class Dessert{
  int id;
  String name;
  String image;
  String recipeUrl;

  Dessert({this.id,this.name,this.image,this.recipeUrl});
}

List<Dessert> desserts=[
Dessert(
  id:0,
  name:'Sade Muhallebi',
  image:'assets/images/dessert_0.jpg',
  recipeUrl: 'https://youtu.be/icgWcBmSlzg',
  ),
  Dessert(
    id:1,
    name:'Revani',
    image:'assets/images/dessert_1.jpg',
    recipeUrl:'https://youtu.be/rUL2IIvD5As' ,
  ),
  Dessert(
    id:2,
    name: 'Çikolatalı Mozaik Pasta',
    image:'assets/images/dessert_2.jpg',
    recipeUrl: 'https://youtu.be/cv7IKwVZWJY',
  ),
];