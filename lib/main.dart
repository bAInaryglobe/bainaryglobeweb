// The entrypoint for the **server** environment.
//
// The [main] method will only be executed on the server during pre-rendering.
// To run code on the client, use the @client annotation.

// Server-specific jaspr import.
import 'package:jaspr/server.dart';

// Imports the [App] component.
import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'jaspr_options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(Document(

    title: 'Bainaryglobe | Home',

    styles: [
      // Special import rule to include to another css file.
      css.import('https://fonts.googleapis.com/css?family=Roboto'),
      css.import('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;700&display=swap'),

      // Each style rule takes a valid css selector and a set of styles.
      // Styles are defined using type-safe css bindings and can be freely chained and nested.
      css('html, body')
          .text(fontFamily: const FontFamily.list([FontFamily('Roboto'), FontFamilies.sansSerif]))
          .box(width: 100.percent, minHeight: 100.vh)
          .box(margin: EdgeInsets.zero, padding: EdgeInsets.zero),
      css('h1').text(fontSize: 4.rem).box(margin: EdgeInsets.unset),
    ],


    head: [

      // The generated flutter manifest and bootstrap script.
      link(rel: 'manifest', href: 'manifest.json'),
      link(href: 'styles.css', rel: 'stylesheet'),
      link(href: 'header.css', rel: 'stylesheet'),
      script(src: "flutter_bootstrap.js", async: true, []),


      // script(src: "https://cdnjs.cloudflare.com/ajax/libs/three.js/r134/three.min.js", async: true, []),
      
      // script(src: "https://cdn.jsdelivr.net/npm/vanta@latest/dist/vanta.clouds.min.js", async: true, []),
      // script(src: "https://cdn.jsdelivr.net/npm/vanta@latest/dist/vanta.clouds2.min.js", async: true, []),
      // script(src: "vanta.dots.min.js", async: true, []),
      // script(src: "vanta.clouds2.min.js", async: true, []),

      // script(src: "vanta-init.js", async: true, []), // Import the new JavaScript file
      // script(src: "background-init.js", async: true, []), // Import the new JavaScript file
      // script(src: "cloud2.js", async: true, []), // Import the new JavaScript file


    ],

    body: const App(),
  ));
}





