import 'dart:html';

Iterable<String> thingsTodo() sync* { 
	for (int i = 0; i < 5; i++) {
		for (int j = 1; j < 5; j++) {
			int number = i*4 + j;
			yield 'List item $number';
		}
	}
}

void addTodoItem(String item) {
  print(item);

  var listElement = LIElement();
  listElement.text = item;
}

LIElement newLI(String itemText) => LIElement()..text = itemText;

void main() {
  querySelector('#output').text = 'Your Dart app is running.';
  Element list = querySelector("#list");
  list.children.addAll(thingsTodo().map(newLI));
}


