import 'package:jaspr/jaspr.dart';

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