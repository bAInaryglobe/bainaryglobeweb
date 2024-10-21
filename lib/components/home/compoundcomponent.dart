import 'package:bainaryglobeweb/components/home/flatcardmultiple.dart';
import 'package:bainaryglobeweb/components/home/purplet.dart';
import 'package:bainaryglobeweb/components/home/rolling.dart';
import 'package:jaspr/jaspr.dart';
// import 'RotatingImageCard.dart';
// import 'ResponsiveImageCard.dart';
// import 'Purplet.dart';

class CompoundComponent extends StatelessComponent {
  const CompoundComponent({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'relative w-full', [
      // RotatingImageCard
      div(classes: 'relative', [
        const RotatingImageCard(imageUrl: '/images/o1.png', altText: 'test'),
      ]),
      // Overlay Container
      div(classes: 'absolute inset-x-0 bottom-0 flex flex-col items-center', styles: Styles.raw({
'height': '50%',
      }),  [
        div(classes: 'w-full', [
          const ResponsiveImageCard(imageUrl: '/images/flatimager.png', altText: 'Bainaryglobe'),
        ]),
        div(classes: 'w-full', [
          Purplet(),
        ]),
      ]),
    ]);
  }
}