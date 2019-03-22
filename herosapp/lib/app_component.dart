import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/hero.dart';

@Component(
  selector: 'my-app',
  //template: , // Replace template with templateUrl
  templateUrl: 'src/app_component.html',
  directives: [formDirectives],
)
class AppComponent {
  var name = 'Angular';
  Hero hero = Hero(1, 'Akil');
}
