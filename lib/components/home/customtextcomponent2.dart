import 'package:jaspr/jaspr.dart';

class CustomTextComponent2 extends StatelessComponent {
  final String textInput;

  const CustomTextComponent2({required this.textInput, super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'font-medium font-space-grotesk',
      styles: const Styles.raw({'text-align': 'center'}),
    [text(textInput)]);
  }
}