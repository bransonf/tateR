## tateR

An R shiny app for image annotation

This app was inspired by `taipan`, a similar R shiny app for image annotations. This project differs in several ways.
1. Taipan offers a framework for creating your own image annotation apps. As of right now, this is a custom solution, not a reproducible framework. (You could always fork this repo and build off of it though)

2. Taipan has actual image annotation, as in you can highlight areas of an image and annotate them. tateR focuses on presenting images and collective qualitative data on them.

3. tateR was built to address what I identified as shortcomings in taipan.
- tateR does not need to cache images locally, allowing you to use cloud bucker storage for example.
- tateR implements realtime data collection with the help of a SQL database. (As opposed to a session cache that requires downloading a .csv) Future implementations could feature multiple users as well with persistent state.
- tateR implements key press functionality. If you want to be efficient, you can navigate images with arrow keys as opposed to clicking next and back buttons.
- tateR is built on a simple framework `shinydashboard` which allows for easy customization. Taipan's default instructions and css I found inconvenient.
