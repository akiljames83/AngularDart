import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'hero_list_component.template.dart' as hero_list_template;
import 'dashboard_component.template.dart' as dashboard_template;

export 'route_paths.dart';

class Routes {
  static final heros = RouteDefinition(
    routePath: RoutePaths.heros,
    component: hero_list_template.HeroListComponentNgFactory,
  );

  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
  );


  static final all = <RouteDefinition>[
    heros,
    dashboard,

    RouteDefinition.redirect(
	  path: '',
	  redirectTo: RoutePaths.dashboard.toUrl(),
	),
  ];
}