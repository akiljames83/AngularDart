import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/hero_service.dart';
import 'src/hero_list_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [HeroListComponent],
  providers: [ClassProvider(HeroService)],
)
class AppComponent {
  final title = 'Mock Heros Project';
}
