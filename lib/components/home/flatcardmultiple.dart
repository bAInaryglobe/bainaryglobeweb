import 'package:jaspr/jaspr.dart';

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
//           div(classes: 'absolute top-0 left-0 bg-black bg-opacity-50 text-white p-2', [
//             text(overlayText!),
//           ]),
//         if (linkText != null)
//           div(classes: 'absolute bottom-0 left-0 bg-black bg-opacity-50 text-white p-2 flex items-center', [
//             text('➔ '), // Simple arrow symbol
//             text(linkText!),
//           ]),
//       ]),
//     ]);
//   }
// }



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



class ResponsiveImageCardGrid extends StatelessComponent {
  const ResponsiveImageCardGrid({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'grid grid-cols-1 md:grid-cols-2 gap-4 p-4', [
      ResponsiveImageCard(
        imageUrl: 'images/n3.png',
        altText: 'Image 1',
        overlayText: 'The perfect platform to manage your digital solutions',
        linkText: 'learn more',
      ),
      ResponsiveImageCard(
        imageUrl: 'images/n4.png',
        altText: 'Image 2',
        overlayText: 'We Develop',
        linkText: 'learn more',
      ),
      ResponsiveImageCard(
        imageUrl: 'images/n5.png',
        altText: 'Image 3',
        overlayText: 'We innovate',
        linkText: 'learn more',
      ),
      ResponsiveImageCard(
        imageUrl: 'images/n6.png',
        altText: 'Image 4',
        overlayText: 'Connecting Ideas Innovation',
        linkText: 'learn more',
      ),
    ]);
  }
}