import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/hero.dart';
import 'src/mockHeros.dart';

@Component(
  selector: 'my-app',
  //template: , // Replace template with templateUrl
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, formDirectives],
)
class AppComponent {
  var title = 'Mock Heros Project';
  Hero selected;
  List<Hero> heros = mockHeros;
  void onClick(hero) => selected = hero;
}
