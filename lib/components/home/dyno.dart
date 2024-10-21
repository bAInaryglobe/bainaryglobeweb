import 'package:jaspr/jaspr.dart';

class DynamicHeightCard extends StatelessComponent {
  const DynamicHeightCard({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'w-full bg-transparent', styles: const Styles.raw({
      'height': 'calc(2.5vh + (100vw - 360px) * 0.5)', // Dynamic height with a faster rate based on width
      'min-height': '2.5vh', // Minimum height for smaller screens
      'max-height': '150vh', // Maximum height for larger screens
    }), [
      // Add any child components or content here if needed
    ]);
  }
}