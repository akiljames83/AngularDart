An absolute bare-bones web app.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

To setup:
> mkdir quickstart
> cd quickstart
> stagehand web-simple
> pub get

To create:
> webdev serve # will be on http://localhost:8080


## Generate the main.dart.js code
To generate the code run the following command to compile dart to javascript
> webdev build

This will generate the main.dart.js file most likely in /build folder. In the HTML file, make sure the file is referred to in the script tag as follows:
```html
<script defer src="../build/main.dart.js"></script>
```