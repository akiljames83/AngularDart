import 'dart:html';
import 'dart:math';

// Letters to be used in scrabble
String scrabbleletters =
'aaaaaaaaabbccddddeeeeeeeeeeeeffggghhiiiiiiiiijkllllmmnnnnnnooooooooppqrrrrrrssssttttttuuuuvvwwxyyz**';

// Declare variables
List<ButtonElement> buttons = new List();
Element letterpile;
Element result;
ButtonElement clearButton;
Element value;
int wordValue = 0;

// Map
Map scrabbleValues = { 'a':1, 'e':1, 'i':1, 'l':1, 'n':1,
                       'o':1, 'r':1, 's':1, 't':1, 'u':1,
                       'd':2, 'g':2, 'b':3, 'c':3, 'm':3,
                       'p':3, 'f':4, 'h':4, 'v':4, 'w':4,
                       'y':4, 'k':5, 'j':8, 'x':8, 'q':10,
                       'z':10, '*':0 };


void main() {
	letterpile = querySelector("#letterpile");
	result = querySelector("#result");
	value = querySelector("#value");
	clearButton = querySelector("#clearButton");

	clearButton.onClick.listen(newletters);

	generateNewLetters();
}

void newletters(Event e) {
	letterpile.children.clear();
	result.children.clear();
	generateNewLetters();
}

void moveletters(Event e) {
	Element letter = e.target;
	// Letter Pile
	if (letter.parent == letterpile) {
		result.children.add(letter); // automatically changes parent
		wordValue += scrabbleValues[letter.text];
		value.text = '$wordValue';
	} 
	// Result Pile
	else {
		letterpile.children.add(letter);
		wordValue -= scrabbleValues[letter.text];
		value.text = '$wordValue';
	}
}


void generateNewLetters() {
	Random indexGenerator = new Random();
	wordValue = 0;
	value.text = '';
	buttons.clear();
	for (int i = 0; i < 8; i++) {
		int letterIndex = 
			indexGenerator.nextInt(scrabbleletters.length);

		buttons.add(new ButtonElement());
		buttons[i].classes.add('letter');
		buttons[i].onClick.listen(moveletters);
		buttons[i].text = scrabbleletters[letterIndex];
		letterpile.children.add(buttons[i]);
	}

}