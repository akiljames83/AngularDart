import 'dart:async';

import 'hero.dart';
import 'mockHeros.dart';

class HeroService{
	Future<List<Hero>> async_getAll() async => mockHeros;
	List<Hero> getAll() => mockHeros;
}