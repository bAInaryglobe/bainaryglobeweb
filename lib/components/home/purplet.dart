import 'package:bainaryglobeweb/components/home/fullwidthimagetext.dart';
import 'package:jaspr/jaspr.dart';
// import 'fullwidthmageText.dart';

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

// void main() {
//   runApp(App());
// }