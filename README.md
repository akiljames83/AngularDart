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
