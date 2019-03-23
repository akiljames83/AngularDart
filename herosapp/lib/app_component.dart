import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'src/hero.dart';
import 'src/mockHeros.dart';
import 'src/hero_component.dart';
import 'src/hero_service.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)],
)
class AppComponent implements onInit {
  var title = 'Mock Heros Project';

  Hero selected;
  void onClick(hero) => selected = hero;

  final HeroService _heroService;
  AppComponent(this._heroService);

  List<Hero> heros;
  void _getHeros() => heros = _heroService.getAll();

  void ngOnInit() => _getHeros();
}
