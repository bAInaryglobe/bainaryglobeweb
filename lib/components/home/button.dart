// import 'package:jaspr/jaspr.dart';

// class CustomButton extends StatelessComponent {
//   const CustomButton({
//     required this.backgroundColor,
//     required this.text,
//     required this.textColor,
//     super.key,
//   });

//   final String backgroundColor;
//   final String text;
//   final String textColor;

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield button(
//       classes: 'custom-button',
//       styles: 'background-color: $backgroundColor; color: $textColor;',
//       [
//         text(this.text),
//       ],
//     );
//   }
// }

// @css
// final styles = [
//   rule('.custom-button', [
//     style('padding', '10px 20px'),
//     style('display', 'inline-block'),
//     style('text-align', 'center'),
//     style('border-radius', '0.5rem'), // rounded-lg
//     style('box-shadow', '0 4px 6px rgba(0, 0, 0, 0.1)'), // shadow-md
//     style('transition', 'transform 0.2s, box-shadow 0.2s'), // transition-transform duration-200
//   ]),
//   rule('.custom-button:hover', [
//     style('box-shadow', '0 10px 15px rgba(0, 0, 0, 0.2)'), // hover:shadow-lg
//     style('transform', 'translateY(-0.25rem)'), // hover:-translate-y-1
//   ]),
// ];