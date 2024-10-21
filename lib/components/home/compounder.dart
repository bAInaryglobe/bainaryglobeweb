// import 'package:jaspr/jaspr.dart';

// class RotatingImageCard extends StatelessComponent {
//   const RotatingImageCard({
//     required this.imageUrl,
//     required this.altText,
//   });

//   final String imageUrl;
//   final String altText;

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'w-full h-auto bg-transparent', [
//       DomComponent(tag: 'style', children: [
//         text(
//           '''
//           @keyframes spin-slow {
//             from {
//               transform: rotate(0deg);
//             }
//             to {
//               transform: rotate(-360deg);
//             }
//           }
//           .animate-spin-slow {
//             animation: spin-slow 10s linear infinite;
//           }
//           .container {
//             display: flex;
//             justify-content: center;
//             align-items: center;
//             width: 100%;
//             height: 100%;
//             background-color: transparent;
//           }
//           .image-wrapper {
//             position: relative;
//             border-radius: 12px;
//             overflow: hidden;
//             background-color: transparent;
//           }
//           .image-wrapper img {
//             width: 100%;
//             height: auto;
//             background-color: transparent;
//           }
//           '''
//         ),
//       ]),
//       div(classes: 'container bg-transparent', [
//         div(classes: 'image-wrapper animate-spin-slow bg-transparent', [
//           img(src: imageUrl, alt: altText),
//         ]),
//       ]),
//     ]);
//   }
// }

// class ResponsiveImageCard extends StatelessComponent {
//   const ResponsiveImageCard({
//     required this.imageUrl,
//     required this.altText,
//     this.overlayText,
//     this.linkText,
//   });

//   final String imageUrl;
//   final String altText;
//   final String? overlayText;
//   final String? linkText;

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'w-full max-w-full p-4', [
//       div(classes: 'relative rounded-xl shadow-2xl overflow-hidden', [
//         img(classes: 'w-full h-auto', src: imageUrl, alt: altText),
//         if (overlayText != null)
//           div(classes: 'absolute top-4 left-4 bg-black bg-opacity-50 text-white p-2', [
//             text(overlayText!),
//           ]),
//         if (linkText != null)
//           div(classes: 'absolute bottom-4 left-4 bg-green-500 bg-opacity-50 text-white p-2 flex items-center rounded-lg', [
//             text('➔ '), // Simple arrow symbol
//             text(linkText!),
//           ]),
//       ]),
//     ]);
//   }
// }

// class FullWidthImageWithText extends StatelessComponent {
//   final String imageUrl;
//   final String text;

//   const FullWidthImageWithText({
//     required this.imageUrl,
//     required this.text,
//     super.key,
//   });

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'relative w-full rounded-lg overflow-hidden', styles: const Styles.raw({
//       'padding-top': '56.25%', // Maintain aspect ratio (16:9)
//     }), [
//       div(classes: 'absolute inset-0', [
//         img(src: imageUrl, classes: 'w-full h-full object-cover'), // Changed object-contain to object-cover
//         div(classes: 'absolute inset-0 flex items-center justify-center', [
//           div(classes: 'text-center text-white font-bold p-4', styles: const Styles.raw({
//             'max-width': '70%',
//             'margin': '0 auto',
//             'padding': '0 15%',
//             'word-wrap': 'break-word',
//             'font-size': 'calc(1.5rem + 1vw)',
//           }), [
//             Text(text),
//           ]),
//         ]),
//       ]),
//     ]);
//   }
// }

// class Purplet extends StatelessComponent {
//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div([
//       const FullWidthImageWithText(
//         imageUrl: '/images/full.png',
//         text: 'Bridging the World with Binary Solutions for Everyday Life.',
//       ),
//     ]);
//   }
// }

// class Compounder extends StatelessComponent {
//   const Compounder({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'relative w-full h-[600px] bg-white shadow-lg rounded-lg overflow-hidden', [
//       // Container for RotatingImageCard and Overlays
//       div(classes: 'relative w-full h-full', [
//         // RotatingImageCard
//         div(classes: 'absolute inset-0', [
//           const RotatingImageCard(imageUrl: '/images/o1.png', altText: 'test'),
//         ]),
//         // Overlay Container
//         div(classes: 'absolute inset-x-0 bottom-0 flex flex-col items-center', styles: const Styles.raw({
//           'height': '50%', // Ensure the overlay covers only the bottom half
//         }), [
//           div(classes: 'w-full', [
//             const ResponsiveImageCard(imageUrl: '/images/flatcard.png', altText: 'Bainaryglobe'),
//           ]),
//           div(classes: 'w-full', [
//             Purplet(),
//           ]),
//         ]),
//       ]),
//     ]);
//   }
// }
























import 'package:bainaryglobeweb/components/home/entire.dart';
import 'package:bainaryglobeweb/components/home/flatcardmultiple.dart';
import 'package:jaspr/jaspr.dart';


class RotatingImageCard extends StatelessComponent {
  const RotatingImageCard({
    required this.imageUrl,
    required this.altText,
  });

  final String imageUrl;
  final String altText;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'justify-center w-full h-auto bg-transparent', [
      DomComponent(tag: 'style', children: [
        text(
          '''
          @keyframes spin-slow {
            from {
              transform: rotate(0deg);
            }
            to {
              transform: rotate(-360deg);
            }
          }
          .animate-spin-slow {
            animation: spin-slow 10s linear infinite;
          }
          .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 100%;
            background-color: transparent;
          }
          .image-wrapper {
            position: relative;
            border-radius: 12px;
            overflow: hidden;
            background-color: transparent;
          }
          .image-wrapper img {
            width: 100%;
            height: auto;
            background-color: transparent;
          }
          '''
        ),
      ]),
      div(classes: 'container bg-transparent', [
        div(classes: 'image-wrapper animate-spin-slow bg-transparent', [
          img(src: imageUrl, alt: altText),
        ]),
      ]),
    ]);
  }
}

class ResponsiveImageCard extends StatelessComponent {
  const ResponsiveImageCard({
    required this.imageUrl,
    required this.altText,
    this.overlayText,
    this.linkText,
  });

  final String imageUrl;
  final String altText;
  final String? overlayText;
  final String? linkText;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'w-full max-w-full p-4', [
      div(classes: 'relative rounded-xl shadow-2xl overflow-hidden', [
        img(classes: 'w-full h-auto', src: imageUrl, alt: altText),
        if (overlayText != null)
          div(classes: 'absolute top-4 left-4 bg-black bg-opacity-50 text-white p-2', [
            text(overlayText!),
          ]),
        if (linkText != null)
          div(classes: 'absolute bottom-4 left-4 bg-green-500 bg-opacity-50 text-white p-2 flex items-center rounded-lg', [
            text('➔ '), // Simple arrow symbol
            text(linkText!),
          ]),
      ]),
    ]);
  }
}


class FullWidthImageWithText extends StatelessComponent {
  final String imageUrl;
  final String text;

  const FullWidthImageWithText({
    required this.imageUrl,
    required this.text,
    super.key,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'relative w-full rounded-lg overflow-hidden', [
      img(src: imageUrl, classes: 'w-full h-auto object-cover'),
      div(classes: 'absolute inset-0 flex items-center justify-center', [
        div(classes: 'text-center text-white font-bold p-4', styles: const Styles.raw({
          'max-width': '70%%',
          'margin': '0 auto',
          'padding': '0 15%',
          'word-wrap': 'break-word',
          'font-size': 'calc(1.5rem + 1vw)',
          // 'border-radius': '5%'
        }), [
          Text(text),
        ]),
      ]),
    ]);
  }
}

class Purplet extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      const FullWidthImageWithText(
        imageUrl: '/images/full.png',
        text: 'Bridging the World with Binary Solutions for Everyday Life.',
      ),
    ]);
  }
}










// class Compounder extends StatelessComponent {
//   const Compounder({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'relative w-full h-[100vh]', [
//       // RotatingImageCard
//       div(classes: 'h-full', [
//         const RotatingImageCard(imageUrl: '/images/o1.png', altText: 'test'),
//       ]),
//       // Overlay Container
//       div(classes: 'absolute inset-x-0 bottom-0 flex flex-col items-center', styles: const Styles.raw({
//         'height': '50%', // This will overlay the bottom half of the RotatingImageCard
//         'pointer-events': 'auto', // Allow interaction with the overlay
//       }), [
//         div(classes: 'w-full', [
//           const ResponsiveImageCard(imageUrl: '/images/flatcard.png', altText: 'Bainaryglobe'),
//            Purplet(),

//       const ResponsiveImageCardGrid(),


//         ]),
//       ]),
//     ]);
//   }
// }




class Compounder extends StatelessComponent {
  const Compounder({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'relative w-full', [
      // RotatingImageCard
      div(classes: 'relative h-full', [
        const RotatingImageCard(imageUrl: '/images/o1.png', altText: 'test'),
      ]),
      // Overlay Container
      div(classes: 'absolute inset-x-0 bottom-0 flex flex-col items-center', styles: const Styles.raw({
        'height': '50%', // Ensure the overlay covers only the bottom half
      }), [
        div(classes: 'w-full', [
          const ResponsiveImageCard(imageUrl: '/images/flatimager.png', altText: 'Bainaryglobe'),
           Purplet(),


           const Entire()

        ]),

        // div(classes: 'w-full', [
        //   Purplet(),
        // ]),

      ]),

    ]
    
    );
    
  }

}




