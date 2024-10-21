import 'package:jaspr/jaspr.dart';

class FullWidthImageWithTextAndButton extends StatelessComponent {
  final String imagePath;
  final String centeredText;

  const FullWidthImageWithTextAndButton({
    required this.imagePath,
    required this.centeredText,
    super.key,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'relative w-full h-screen', [
      img(src: imagePath, classes: 'w-full h-full object-cover'),
      div(classes: 'absolute inset-0 flex flex-col items-center justify-center', [
        div(classes: 'text-center text-white font-bold text-4xl md:text-6xl', [
          text(centeredText),
        ]),
        div(classes: 'absolute bottom-8', [
          button(
            classes: 'bg-gradient-to-r from-black to-purple-600 text-white font-medium py-2 px-4 rounded-full',
            [text('Explore Now')],
          ),
        ]),
      ]),
    ]);
  }
}