import 'package:angular/angular.dart';
import 'hero.dart';

@Component(
  selector: 'my-app',
  template: '''
  		<h1>
  			Hello {{name}}
  		</h1>
  		<p>
  			Your hero is {{hero.name}}.
  			<br>
  			{{hero.name}}'s ID is {{hero.id}}.
  		</p>
  		<h2>Update Hero Name:</h2>
  		<div>
  			<label>
  				Update:
  			</label>
  			<input [(ngModel)]="hero.name" placeholder="Update name">
  		</div>
  		<h2>Details</h2>
  		<br>
  		<div><label>id: </label>{{hero.id}}</div>
  		<div><label>name: </label>{{hero.name}}</div>
  		''',
)
class AppComponent {
  var name = 'Angular';
  Hero hero = Hero(1, 'Akil');
}
