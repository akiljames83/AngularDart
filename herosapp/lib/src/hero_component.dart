import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'hero.dart';

@Component(
	selector: 'my-hero',
	templateUrl: ,
	directives: [formDirectives, coreDirectives]
)
class HeroComponent{
	@Input() // Property binding expression
	Hero hero;
}