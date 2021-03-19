class MainCourse{
  int id;
  String name;
  String image;
  String recipeUrl;

  MainCourse({this.id,this.name,this.image,this.recipeUrl});
}

List<MainCourse> mainCourses=[
MainCourse(
  id:0,
  name:'Fırında Tavuk',
  image:'assets/images/mainCourse_0.jpg',
  recipeUrl: 'https://youtu.be/4o8bu-X-JzE',
  ),
  MainCourse(
    id:1,
    name:'Nohut',
    image:'assets/images/mainCourse_1.jpg',
    recipeUrl:'https://youtu.be/EumdGnwKMAk' ,
  ),
  MainCourse(
    id:2,
    name:'Kuru Fasulye',
    image:'assets/images/mainCourse_2.jpg',
    recipeUrl: 'https://youtu.be/1yjlxkRGZhs',
  ),
];