import 'package:jaspr/jaspr.dart';

class SimpleLineComponent extends StatelessComponent {
  const SimpleLineComponent({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'justify-center flex items-center space-x-2 text-gray-500', [
      span(classes: 'text-lg', [text('Will You like to know more')]),
      span(classes: 'font-bold text-lg text-gray-700', [text('Keep Scrolling')]),
      i(classes: 'fas fa-arrow-right text-lg text-gray-700', []),
    ]);
  }
}