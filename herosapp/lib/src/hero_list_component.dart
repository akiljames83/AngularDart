import 'dart:async';

import 'package:angular/angular.dart';

import 'hero.dart';
import 'mockHeros.dart';
import 'hero_component.dart';
import 'hero_service.dart';

@Component(
  selector: 'my-heros',
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.css'],
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)],
)
class HeroListComponent implements OnInit {
  final HeroService _heroService;
  List<Hero> heros;
  Hero selected;

  HeroListComponent(this._heroService);
    
  Future<void> _async_getHeros() async {
	heros = await _heroService.getAll();
  }
  void _getHeros() => heros = _heroService.getAll();

  void ngOnInit() => _getHeros();
  void onClick(hero) => selected = hero;
}
