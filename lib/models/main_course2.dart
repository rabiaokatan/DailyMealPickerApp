class MainCourse2{
  int id;
  String name;
  String image;
  String recipeUrl;

  MainCourse2({this.id,this.name,this.image,this.recipeUrl});
}

List<MainCourse2> mainCourses2=[
MainCourse2(
  id:0,
  name:'Pirinç Pilavı',
  image:'assets/images/mainCourse2_0.jpg',
  recipeUrl: 'https://youtu.be/asoXVOUJ80o',
  ),
  MainCourse2(
    id:1,
    name:'Bulgur Pilavı',
    image:'assets/images/mainCourse2_1.jpg',
    recipeUrl:'https://youtu.be/MCEhWAwIFqo' ,
  ),
  MainCourse2(
    id:2,
    name:'Garnitürlü Pirinç Pilavı',
    image:'assets/images/mainCourse2_2.jpg',
    recipeUrl: 'https://youtu.be/pPaBHW4GMoo',
  ),
];