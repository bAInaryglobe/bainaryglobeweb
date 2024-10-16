import 'package:bainaryglobeweb/constants/theme.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class Header extends StatefulComponent {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool isMenuOpen = false;
  bool isDarkTheme = false;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var activePath = context.binding.currentUri.path;

    yield header(classes: 'relative', [
      nav(classes: 'bg-[#800080] top-4 bg-opacity-100 mx-auto fixed left-1/2 transform -translate-x-1/2 h-16 w-11/12 rounded-lg shadow-lg flex justify-between items-center p-4', [
        div(classes: 'flex items-center', [
          img(src: 'images/logo1.png', classes: 'h-12 w-12 mr-2'), // Add your logo here
          span(classes: 'text-white text-2xl font-bold font-space-grotesk', [text('Bainaryglobe')]),
        ]),

        div(classes: 'hidden md:flex items-center space-x-4', [
          for (var route in [
            (label: 'HOME', path: '/'),
            (label: 'ABOUT', path: '/'),
            (label: 'SERVICES', path: '/'),
            (label: 'CONTACT', path: '/'),
          ])
            Link(
              to: route.path,
              child: text(route.label),
              classes: 'text-white font-bold no-underline px-4 py-2 hover:text-primaryColor transition-colors duration-300${route.label == 'CONTACT' ? ' border border-white rounded-lg' : ''}',
            ),
        ]),

        div(classes: 'flex items-center space-x-4', [
          button(
            onClick: toggleMenu,
            classes: 'text-white focus:outline-none md:hidden',
            [
              span(classes: 'hamburger-icon', [
                div(classes: 'w-6 h-1 bg-white mb-1', []),
                div(classes: 'w-6 h-1 bg-white mb-1', []),
                div(classes: 'w-6 h-1 bg-white', []),
              ]),
            ],
          ),
          button(
            onClick: toggleTheme,
            classes: 'text-white focus:outline-none',
            [
              img(src: isDarkTheme ? 'images/switch.png' : 'images/switch.png', classes: 'h-9 w-9'), // Add your theme switcher icons here
            ],
          ),
        ]),
      ]),

      if (isMenuOpen)
        div(classes: 'absolute top-16 left-0 w-full bg-[#800080] bg-opacity-90 p-4 transition-opacity duration-300', [
          div(classes: 'flex flex-col items-center space-y-4', [
            for (var route in [
              (label: 'HOME', path: '/'),
              (label: 'ABOUT', path: '/about'),
              (label: 'SERVICES', path: '/'),
              (label: 'CONTACT', path: '/contact'),
            ])
              Link(
                to: route.path,
                child: text(route.label),
                classes: 'text-white font-bold no-underline px-4 py-2 hover:text-primaryColor transition-colors duration-300${route.label == 'CONTACT' ? ' border border-white rounded-lg' : ''}',
              ),
          ]),
        ]),
    ]);

    if (isDarkTheme) {
      yield DomComponent(
        tag: 'style',
        children: [
          text('body { background-color: black; }'),
        ],
      );
    }
  }
}






















// import 'package:bainaryglobeweb/constants/theme.dart';
// import 'package:jaspr/jaspr.dart';
// import 'package:jaspr_router/jaspr_router.dart';
// // import 'package:jaspr_css/jaspr_css.dart';

// class Header extends StatefulComponent {
//   const Header({super.key});

//   @override
//   State<Header> createState() => _HeaderState();
// }

// class _HeaderState extends State<Header> {
//   bool isMenuOpen = false;
//   bool isDarkTheme = false;

//   void toggleMenu() {
//     setState(() {
//       isMenuOpen = !isMenuOpen;
//     });
//   }

//   void toggleTheme() {
//     setState(() {
//       isDarkTheme = !isDarkTheme;
//     });
//   }

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     var activePath = context.binding.currentUri.path;

//     yield header(classes: 'relative', [
//       nav(classes: 'bg-[#800080] top-4 bg-opacity-100 mx-auto fixed left-1/2 transform -translate-x-1/2 h-16 w-11/12 rounded-lg shadow-lg flex justify-between items-center p-4', [
//         div(classes: 'flex items-center', [
//           img(src: 'images/logo1.png', classes: 'h-12 w-12 mr-2'), // Add your logo here
//           span(classes: 'text-white text-2xl font-bold', [text('Bainaryglobe')]),
//         ]),

//         div(classes: 'hidden md:flex items-center space-x-4', [
//           for (var route in [
//             (label: 'HOME', path: '/'),
//             (label: 'ABOUT', path: '/'),
//             (label: 'SERVICES', path: '/'),
//             (label: 'CONTACT', path: '/'),
//           ])
//             Link(
//               to: route.path,
//               child: text(route.label),
//               classes: 'text-white font-bold no-underline px-4 py-2 hover:text-primaryColor transition-colors duration-300${route.label == 'CONTACT' ? ' border border-white' : ''}',
//             ),
//         ]),

//         div(classes: 'md:hidden flex items-center', [
//           button(
//             onClick: toggleMenu,
//             classes: 'text-white focus:outline-none',
//             [
//               span(classes: 'hamburger-icon', [
//                 div(classes: 'w-6 h-1 bg-white mb-1', []),
//                 div(classes: 'w-6 h-1 bg-white mb-1', []),
//                 div(classes: 'w-6 h-1 bg-white', []),
//               ]),
//             ],
//           ),
//         ]),

//         div(classes: 'flex items-center', [
//           button(
//             onClick: toggleTheme,
//             classes: 'text-white focus:outline-none ml-4',
//             [text(isDarkTheme ? 'Light Mode' : 'Dark Mode')],
//           ),
//         ]),
//       ]),

//       if (isMenuOpen)
//         div(classes: 'absolute top-16 left-0 w-full bg-[#800080] bg-opacity-90 p-4 transition-opacity duration-300', [
//           div(classes: 'flex flex-col items-center space-y-4', [
//             for (var route in [
//               (label: 'HOME', path: '/'),
//               (label: 'ABOUT', path: '/'),
//               (label: 'SERVICES', path: '/'),
//               (label: 'CONTACT', path: '/'),
//             ])
//               Link(
//                 to: route.path,
//                 child: text(route.label),
//                 classes: 'text-white font-bold no-underline px-4 py-2 hover:text-primaryColor transition-colors duration-300${route.label == 'CONTACT' ? ' border border-white' : ''}',
//               ),
//           ]),
//         ]),
//     ]);


//   @css
//   final styles = [
//     // Define any additional styles here if needed
//   ];


//   }
// }













  // if (isDarkTheme) {
    //   yield style([text('body { background-color: black; }')]);
    // }


    //  if (isDarkTheme)
    //     div(classes: 'absolute top-0 left-0 w-full h-full bg-black opacity-50 pointer-events-none'),
    // ]);

    // if (isDarkTheme) {
    //   yield Component(
    //     tag: 'style',
    //     children: [
    //       text('body { background-color: black; }'),
    //     ],
    //   );
    // }



























// import 'package:bainaryglobeweb/constants/theme.dart';
// import 'package:jaspr/jaspr.dart';
// import 'package:jaspr_router/jaspr_router.dart';

// class Header extends StatelessComponent {
//   const Header({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     var activePath = context.binding.currentUri.path;

//     yield header(classes: 'relative', [

//       nav(classes: 'bg-[#800080] top-4 bg-opacity-100 mx-auto fixed left-1/2 transform -translate-x-1/2 h-16 w-11/12 rounded-lg shadow-lg flex justify-between items-center p-4', [
        
//         div(classes: 'flex items-center', [
//           img(src: 'images/logo1.png', classes: 'h-12 w-12 mr-2'), // Add your logo here

//           // span(classes: 'text-white text-2xl font-bold', [text('< ')]),
//           span(classes: 'text-white text-2xl font-bold', [text('Bainaryglobe')]),
//           // span(classes: 'text-white text-2xl font-bold', [text(' />')]),
//         ]),

//         div(classes: 'flex items-center space-x-4', [
//           for (var route in [
//             (label: 'HOME', path: '/'),
//             (label: 'ABOUT', path: '/'),
//             (label: 'SERVICES', path: '/'),
//             (label: 'CONTACT', path: '/'),
//           ])
//             Link(
//               to: route.path,
//               child: text(route.label),
//               classes: 'text-white font-bold no-underline px-4 py-2 hover:text-primaryColor transition-colors duration-300',
//             ),
//         ]),

//       ]),
//     ]);
//   }



// }




  // @css
  // static final styles = [
  //   // Define any additional styles here if needed
  // ];


























// import 'package:jaspr/jaspr.dart';
// import 'package:jaspr_router/jaspr_router.dart';

// class Header extends StatelessComponent {
//   const Header({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     var activePath = context.binding.currentUri.path;

//     yield header([
//       nav(classes: 'bg-primaryColor h-12 w-full rounded-lg overflow-hidden flex justify-between', [
//         for (var route in [
//           (label: 'Home', path: '/'),
//           (label: 'About', path: '/about'),
//           (label: 'Services', path: '/services'),
//           (label: 'Contact', path: '/contact'),
//         ])
//           div(classes: activePath == route.path ? 'relative' : null, [
//             Link(
//               to: route.path,
//               child: text(route.label),
//               classes: 'text-white font-bold no-underline h-full px-8 flex items-center hover:bg-opacity-50',
//             ),
//             if (activePath == route.path)
//               div(classes: 'absolute bottom-2 left-5 right-5 h-0.5 bg-white rounded-full', [])
//           ]),
//       ]),
//     ]);


    

//       @css final styles = [
//     // Define any styles here if needed
//   ];



//   }
// }

































// import 'package:jaspr/jaspr.dart';

// import 'package:jaspr_router/jaspr_router.dart';

// import '../constants/theme.dart';

// class Header extends StatelessComponent {
//   const Header({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     var activePath = context.binding.currentUri.path;

//     yield header([


//       nav([
//         for (var route in [

//           (label: 'Home', path: '/'),
//           (label: 'About', path: '/about'),
//           (label: 'About', path: '/about'),
//           (label: 'About', path: '/about'),

//         ])
//           div(classes: activePath == route.path ? 'active' : null, [
//             Link(to: route.path, child: text(route.label)),
//           ]),
//       ]),


//     ]);
//   }

//   @css
//   static final styles = [
//     css('header', [
//       css('&').flexbox(justifyContent: JustifyContent.center).box(padding: EdgeInsets.all(1.em)),
//       css('nav', [
//         css('&')
//             .background(color: primaryColor)
//             .box(height: 3.em, width:100.percent, radius: BorderRadius.all(Radius.circular(10.px)), overflow: Overflow.clip)
//             .flexbox(justifyContent: JustifyContent.spaceBetween),
//         css('a', [
//           css('&')
//               .text(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w700,
//                 decoration: const TextDecoration(line: TextDecorationLine.none),
//               )
//               .box(height: 100.percent, padding: EdgeInsets.symmetric(horizontal: 2.em))
//               .flexbox(alignItems: AlignItems.center),
//           css('&:hover').background(color: const Color.hex('#0005')),
//         ]),
//         css('div.active', [
//           css('&').box(position: const Position.relative()),
//           css('&::before')
//               .raw({'content': '""'})
//               .box(
//                 display: Display.block,
//                 position: Position.absolute(bottom: 0.5.em, left: 20.px, right: 20.px),
//                 radius: BorderRadius.circular(1.px),
//                 height: 2.px,
//               )
//               .background(color: Colors.white)
//         ])
//       ]),
//     ]),
//   ];
// }
