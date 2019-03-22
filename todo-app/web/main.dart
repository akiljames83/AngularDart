import 'dart:html';

InputElement input;
UListElement list;

void main() {
  input = querySelector("#todo-input");
  list = querySelector("#todo-list");
  input.onChange.listen(addTodoItem);
}

void addTodoItem(Event e) {
	var newToDo = new LIElement();
	newToDo.text = input.value;
	input.value = "";
	list.children.add(newToDo);
}


