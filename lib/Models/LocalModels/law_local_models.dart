
 import '../../Routes/route.dart';

class LawModels{
  final String? img;
  final String? text;
  final String? icons;
  final String? route;


  LawModels({required this.img, required this.text,  required this.icons , this.route});

}

 List laws =[
  LawModels(
   img: 'images/indian_judiciary_system.png', text: 'Indian Judiciary System', icons: 'images/arrowDark.png', route: Routes.judiciary),
  LawModels(
      img: 'images/civil_laws.png', text: 'Civil Laws', icons:'images/arrowDark.png',route: Routes.civil),
  LawModels(
      img:'images/criminal_laws.png',  text:'Criminal Laws', icons:'images/arrowDark.png',route: Routes.criminal),
  LawModels(
      img:'images/acts.png',  text:'List Acts',icons: 'images/arrowDark.png',route: Routes.acts)
 ];