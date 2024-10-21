import 'package:jaspr/jaspr.dart';

class CustomTextComponent extends StatelessComponent {
  final String textInput;

  const CustomTextComponent({required this.textInput, super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'font-bold text-6xl',
      styles: const Styles.raw({'text-align': 'center', 'font-weight': 'bold'}),
    [text(textInput)]);
  }
}