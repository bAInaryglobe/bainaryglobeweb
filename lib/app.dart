import 'package:bainaryglobeweb/components/footer.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/header.dart';
import 'pages/about.dart';
import 'pages/home.dart';

// The main component of your application.
//
// By using multi-page routing, this component will only be built on the server during pre-rendering and
// **not** executed on the client. Instead only the nested [Home] and [About] components will be mounted on the client.
class App extends StatelessComponent {
  const App({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex flex-col min-h-screen', [
      const Header(),
      div(classes: 'flex-grow', [
        Router(routes: [
          Route(path: '/', title: 'Home', builder: (context, state) => const Home()),
          Route(path: '/about', title: 'About', builder: (context, state) => const About()),
        ]),
      ]),
      const Footer(),
    ]);
  }



  // @css final styles = [

  // ];

}























// import 'package:bainaryglobeweb/components/footer.dart';
// import 'package:jaspr/jaspr.dart';
// import 'package:jaspr_router/jaspr_router.dart';

// import 'components/header.dart';
// import 'pages/about.dart';
// import 'pages/home.dart';

// // The main component of your application.
// //
// // By using multi-page routing, this component will only be built on the server during pre-rendering and
// // **not** executed on the client. Instead only the nested [Home] and [About] components will be mounted on the client.
// class App extends StatelessComponent {
//   const App({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     // This method is rerun every time the component is rebuilt.
//     //
//     // Each build method can return multiple child components as an [Iterable]. The recommended approach
//     // is using the [sync* / yield] syntax for a streamlined control flow, but its also possible to simply
//     // create and return a [List] here.

//     // Renders a <div class="main"> html element with children.
//     yield div(classes: 'main', [
//       const Header(),
//       Router(routes: [
//         Route(path: '/', title: 'Home', builder: (context, state) => const Home()),
//         Route(path: '/about', title: 'About', builder: (context, state) => const About()),
//       ]),

//       Footer(),


//     ]);
//   }

//   @css
//   static final styles = [
//     css('.main', [
//       // The '&' refers to the parent selector of a nested style rules.
//       css('&').box(height: 100.vh).flexbox(direction: FlexDirection.column, wrap: FlexWrap.wrap),
//       css('section').flexItem(flex: Flex(grow: 1)).flexbox(
//         direction: FlexDirection.column,
//         justifyContent: JustifyContent.center,
//         alignItems: AlignItems.center,
//       ),
//     ]),
//   ];
// }
