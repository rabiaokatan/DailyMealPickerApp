class Soup{
  int id;
  String name;
  String image;
  String recipeUrl;

  Soup({this.id,this.name,this.image,this.recipeUrl});
}

List<Soup> soups=[
Soup(
  id:0,
  name:'Mercimek Çorbası',
  image:'assets/images/soup_0.jpg',
  recipeUrl: 'https://youtu.be/Njhxj5qUpuo',
  ),
  Soup(
    id:1,
    name:'Tavuk suyu Çorbası',
    image:'assets/images/soup_1.jpg',
    recipeUrl:'https://youtu.be/1foCujBe6HY' ,
  ),
  Soup(
    id:2,
    name:'Yayla Çorbası',
    image:'assets/images/soup_2.jpg',
    recipeUrl: 'https://youtu.be/DFkxiEU9_kc',
  ),
];