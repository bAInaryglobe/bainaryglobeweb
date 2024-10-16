// import 'package:jaspr/jaspr.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class Footer extends StatelessComponent {
//   const Footer({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield footer(classes: 'bg-footerColor text-white font-bold p-4 flex flex-col items-center mt-auto', [
//       div(classes: 'social-icons flex mb-4', [
//         a(href: '#', classes: 'mx-2', [
//           FaIcon(FontAwesomeIcons.facebook, size: 24), // Facebook icon
//         ]),
//         a(href: '#', classes: 'mx-2', [
//           FaIcon(FontAwesomeIcons.linkedin, size: 24), // LinkedIn icon
//         ]),
//         a(href: '#', classes: 'mx-2', [
//           FaIcon(FontAwesomeIcons.twitter, size: 24), // Twitter icon
//         ]),
//         a(href: '#', classes: 'mx-2', [
//           FaIcon(FontAwesomeIcons.instagram, size: 24), // Instagram icon
//         ]),
//       ]),
//       p([
//         a(href: 'mailto:info@bainaryglobe.com', [text('info@bainaryglobe.com')]),
//       ]),
//       p([text('Lagos, Nigeria')]),
//     ]);
//   }

//   // @css final styles = [
//   // ];
// }




















import 'package:jaspr/jaspr.dart';
import 'package:bainaryglobeweb/constants/theme.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield footer(classes: 'bg-[#000033] text-white font-bold p-4 flex flex-col items-center mt-auto', [
      div(classes: 'social-icons flex mb-4', [
        a(href: '#', classes: 'mx-2', [
          img(src: 'images/logo1.png', alt: 'Facebook', classes: 'w-5 h-5 md:w-8 md:h-8'),
        ]),
        a(href: '#', classes: 'mx-2', [
          img(src: 'path/to/linkedin-icon.png', alt: 'LinkedIn', classes: 'w-5 h-5 md:w-8 md:h-8'),
        ]),
        a(href: '#', classes: 'mx-2', [
          img(src: 'path/to/twitter-icon.png', alt: 'Twitter', classes: 'w-5 h-5 md:w-8 md:h-8'),
        ]),
        a(href: '#', classes: 'mx-2', [
          img(src: 'path/to/instagram-icon.png', alt: 'Instagram', classes: 'w-5 h-5 md:w-8 md:h-8'),
        ]),
      ]),
      p([
        a(href: 'mailto:info@bainaryglobe.com', [text('info@bainaryglobe.com')]),
      ]),
      p([text('Lagos, Nigeria')]),
    ]);
  }

  // @css final styles = [
  // ];
}




















// import 'package:jaspr/jaspr.dart';

// import 'package:bainaryglobeweb/constants/theme.dart';

// class Footer extends StatelessComponent {
//   const Footer({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield footer(classes: 'bg-footerColor text-white font-bold p-4 flex flex-col items-center', [
//       div(classes: 'social-icons flex mb-4', [
//         a(href: '#', classes: 'mx-2', [
//           img(src: 'path/to/facebook-icon.png', alt: 'Facebook', classes: 'w-5 h-5 md:w-8 md:h-8'),
//         ]),
//         a(href: '#', classes: 'mx-2', [
//           img(src: 'path/to/linkedin-icon.png', alt: 'LinkedIn', classes: 'w-5 h-5 md:w-8 md:h-8'),
//         ]),
//         a(href: '#', classes: 'mx-2', [
//           img(src: 'path/to/twitter-icon.png', alt: 'Twitter', classes: 'w-5 h-5 md:w-8 md:h-8'),
//         ]),
//         a(href: '#', classes: 'mx-2', [
//           img(src: 'path/to/instagram-icon.png', alt: 'Instagram', classes: 'w-5 h-5 md:w-8 md:h-8'),
//         ]),
//       ]),
//       p([
//         a(href: 'mailto:info@bainaryglobe.com', [text('info@bainaryglobe.com')]),
//       ]),
//       p([text('Lagos, Nigeria')]),
//     ]);
//   }


//   // @css final styles = [

//   // ];

// }



















// import 'package:jaspr/jaspr.dart';
// import 'package:bainaryglobeweb/constants/theme.dart';

// class Footer extends StatelessComponent {
//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield footer([
//       div(classes: 'social-icons', [


//         a(href: '#', [
//           img(src: 'path/to/facebook-icon.png', alt: 'Facebook'),
//         ]),
//         a(href: '#', [
//           img(src: 'path/to/linkedin-icon.png', alt: 'LinkedIn'),
//         ]),
//         a(href: '#', [
//           img(src: 'path/to/twitter-icon.png', alt: 'Twitter'),
//         ]),
//         a(href: '#', [
//           img(src: 'path/to/instagram-icon.png', alt: 'Instagram'),
//         ]),
//       ]),


//       p([text('Contact Info:')]),
//       p([
//         a(href: 'tel:000000000', [text('000000000')]),
//       ]),
//       p([
//         a(href: 'mailto:info@bainaryglobe.com', [text('info@bainaryglobe.com')]),
//       ]),
//       p([text('Lagos, Nigeria')]),


//     ]);
//   }

//   @css
//   static final styles = [
//     css('body', [
//       // css('&').background(color: footerColor).box()
//     ]),
//     css('footer', [
//       css('&').text(
//         color: Colors.white,
//         fontWeight: FontWeight.w700,
//       ).background(color: footerColor).box(padding: EdgeInsets.symmetric(horizontal: 2.em)),
//     ]),
//     css('.social-icons', [
//       css('&'),
//       css('img', [
//         css('&').box(width: 20.px, height: 20.px, ),
//       ]),
//     ]),
//     css('@media (max-width: 600px)', [
//       css('footer', [
//         css('&').box(padding: (EdgeInsets.all(10.px))),
//       ]),
//       css('.social-icons img', [
//         css('&').box(width: 15.px, height: 15.px),
//       ]),
//     ]),
//   ];



// }



































// import 'package:jaspr/jaspr.dart';
// import 'package:jaspr_router/jaspr_router.dart';

// import '../constants/theme.dart';

// class Footer extends StatelessComponent {
//   const Footer({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     var activePath = context.binding.currentUri.path;

//     yield header([
//       nav([
//         for (var route in [
//           (label: 'Homesss', path: '/'),
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
//             .box(height: 3.em, radius: BorderRadius.all(Radius.circular(10.px)), overflow: Overflow.clip)
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
