import 'dart:html';

InputElement input;
UListElement list;
ButtonElement delete;

void main() {
  input = querySelector("#todo-input");
  list = querySelector("#todo-list");
  input.onChange.listen(addTodoItem);

  delete = querySelector("#delete");
  delete.onClick.listen(
  	(Event e) => list.children.clear()
  );

}

void addTodoItem(Event e) {
	// Use .. syntax to refer to current element attributes
	var newToDo = new LIElement()
		..text = input.value;
	newToDo.onClick.listen((Event e) => newToDo.remove());

	input.value = "";
	list.children.add(newToDo);
}


