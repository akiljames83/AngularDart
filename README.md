# AngularDart Tutorial 

This page is to document my journey using AngularDart. I will update this page with tips and tricks I learn along the way as well as the various projects that I create to learn more about this language.

## To setup: 
```bash
> mkdir quickstart
> cd quickstart
> stagehand web-simple
> pub get
```

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