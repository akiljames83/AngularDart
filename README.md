# AngularDart Tutorial 

This page is to document my journey using AngularDart. I will update this page with tips and tricks I learn along the way as well as the various projects that I create to learn more about this language.

## To setup: 
```bash
> mkdir quickstart
> cd quickstart
> stagehand web-simple
> pub get
```

### Dart SDK - Personal:
For reference, the dart-sdk is located here: C:\Users\akilj\flutter\bin\cache.

## To create: 
```bash
> webdev serve
```
This will server the dart app typically on http://localhost:8080.


## Generate the main.dart.js code
To generate the code run the following command to compile dart to javascript.
```bash
> webdev build
```

This will generate the main.dart.js file most likely in /build folder. In the HTML file, make sure the file is referred to in the script tag as follows:
```html
<script defer src="../build/main.dart.js"></script>
```

## Element Class Documentation
The element class is the underlying Data structure for interacting with the DOM. In the following link are various ways to interact with the DOM as well as add new elements to the DOM: https://api.dartlang.org/stable/2.2.0/dart-html/Element-class.html .

## Using Lists in Dart
The following sections demonstrates how to use the List Class in Dart. The documentation for the List Class can be found here: https://api.dartlang.org/stable/2.2.0/dart-core/List-class.html .

Fixed Length:
```dart
List<int> fixedLengthList = new List(5);
fixedLengthList.length = 0;  // Error
fixedLengthList.add(499);    // Error
fixedLengthList[0] = 87;
```

Dynamically Sized List:
```dart
List<int> growableList = [1, 2];
growableList.length = 0;
growableList.add(499);
growableList[0] = 87;
```

## Using AngularDart
Clone from the following repo and follow setup instructions in README.md: https://github.com/angular-examples/quickstart/tree/master .

### Component
Various properties that can be used each component:
- <em>Selector:</em>  denotes the html tag that can be used in main HTML files
- <em>Template:</em> denotes the HTML as well as the app_component variables that will be used in the page. This is defined inline (or multiline).
- <em>TemplateUrl:</em> denotes the location of an HTML file that implements the structure for the component. It is good convention to place these files in the lib/src/ directory.
- <em>Directives: </em>denotes the directives to be used from particular imports, (eg. formDirectives import for angular_forms package).

