// import 'package:jaspr/jaspr.dart';

// class ResponsiveImageCard extends StatelessComponent {
//   const ResponsiveImageCard({required this.imageUrl, required this.altText});

//   final String imageUrl;
//   final String altText;

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'w-full max-w-full p-4', [
//       div(classes: 'rounded-xl shadow-2xl overflow-hidden', [
//         img(classes: 'w-full h-auto', src: imageUrl, alt: altText),
//       ]),
//     ]);
//   }
// }












import 'package:jaspr/jaspr.dart';

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
          div(classes: 'absolute top-0 left-0 bg-black bg-opacity-50 text-white p-2', [
            text(overlayText!),
          ]),
        if (linkText != null)
          div(classes: 'absolute bottom-0 left-0 bg-black bg-opacity-50 text-white p-2 flex items-center', [
            text('➔ '), // Simple arrow symbol
            text(linkText!),
          ]),
      ]),
    ]);
  }
}