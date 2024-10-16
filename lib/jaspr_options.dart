// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:bainaryglobeweb/components/counter.dart' as prefix0;
import 'package:bainaryglobeweb/pages/about.dart' as prefix1;
import 'package:bainaryglobeweb/pages/contact.dart' as prefix2;
import 'package:bainaryglobeweb/pages/home.dart' as prefix3;
import 'package:bainaryglobeweb/pages/services.dart' as prefix4;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
final defaultJasprOptions = JasprOptions(
  clients: {
    prefix1.About: ClientTarget<prefix1.About>('pages/about'),
    prefix2.About: ClientTarget<prefix2.About>('pages/contact'),
    prefix3.Home: ClientTarget<prefix3.Home>('pages/home'),
    prefix4.About: ClientTarget<prefix4.About>('pages/services'),
  },
  styles: () => [
    ...prefix0.CounterState.styles,
    ...prefix1.About.styles,
  ],
);
