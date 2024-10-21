// import 'package:jaspr/jaspr.dart';

// class TitleText extends StatelessComponent {
//   const TitleText({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'bg-[#0080000] p-4 text-center', [
//       div(classes: 'flex flex-wrap justify-center items-center gap-4', [

//                div(classes: 'flex-1', [
//           p(classes: 'text-lg mb-2', [text('The culture at Bainary Globe is driven by innovation, customer-centricity, and excellence. ')]),
//           p(classes: 'text-lg mb-2', [text('It promotes creativity, teamwork, and diverse perspectives, ensuring solutions that exceed expectations.')]),
//           p(classes: 'text-lg', [text('Honesty, transparency, and ethical practices guide decision-making, while professional growth is supported through continuous learning and career advancement opportunities.')]),
//         ]),


//         button(
//           classes: 'bg-purple-700 text-white rounded-lg shadow-lg font-space-grotesk transition-colors duration-200 hover:bg-black px-6 py-3',
//           [
//             text('Explore now'),
//           ]
//         ),


 



//       ]),
//     ]);
//   }
// }





import 'package:jaspr/jaspr.dart';

class TitleText extends StatelessComponent {
  const TitleText({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: ' bg-[#0080000] p-4 text-center', [
      div(classes: 'flex flex-col md:flex-row flex-wrap justify-center items-center gap-4', [
        div(classes: 'flex-1', [
          p(classes: 'text-lg mb-2', [
            text('At Bainary Globe, we are dedicated to crafting innovative digital solutions that effectively tackle real-world challenges,  ')
          ]),
          p(classes: 'text-lg mb-2', [
            text('empowering individuals and businesses to thrive in an ever-evolving landscape')
          ]),
          p(classes: 'text-lg', [
            // text('Honesty, transparency, and ethical practices guide decision-making, while professional growth is supported through continuous learning and career advancement opportunities.')
          ]),
        ]),
        div(classes: 'flex-shrink-0', [
          button(
            // classes: 'bg-purple-700 text-white rounded-lg shadow-lg font-space-grotesk transition-colors duration-200 hover:bg-black px-6 py-3',
            [
              text('Explore now'),
            ]
          ),
        ]),
      ]),
    ]);
  }
}






      // p(classes: 'text-lg', [text('It prioritizes understanding and meeting the needs of its users, ensuring digital solutions that exceed expectations.')]),
      // p(classes: 'text-lg', [text('It prioritizes understanding and meeting the needs of its users, ensuring digital solutions that exceed expectations.')]),
      // p(classes: 'text-lg', [text('It prioritizes understanding and meeting the needs of its users, ensuring digital solutions that exceed expectations.')]),
      // p(classes: 'text-lg', [text('It prioritizes understanding and meeting the needs of its users, ensuring digital solutions that exceed expectations.')]),
      // p(classes: 'text-lg', [text('It prioritizes understanding and meeting the needs of its users, ensuring digital solutions that exceed expectations.')]),





// import 'package:jaspr/jaspr.dart';

// class TitleText extends StatelessComponent {
//   const TitleText({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'bg-[#0080000] p-4', [

//       h1(classes: 'text-4xl font-bold mb-4', [text('Culture')]),
//       p(classes: 'text-lg mb-2', [text('The culture at Bainary Globe is centered around innovation, customer-centricity, and excellence. ')]),
//       p(classes: 'text-lg mb-2', [text('The company fosters a creative environment that encourages new ideas and solutions to stay at the forefront of the tech industry. ')]),
//       p(classes: 'text-lg', [text('It prioritizes understanding and meeting the needs of its users, ensuring digital solutions that exceed expectations.')]),
//       p(classes: 'text-lg', [text('It prioritizes understanding and meeting the needs of its users, ensuring digital solutions that exceed expectations.')]),
//       p(classes: 'text-lg', [text('It prioritizes understanding and meeting the needs of its users, ensuring digital solutions that exceed expectations.')]),
//       p(classes: 'text-lg', [text('It prioritizes understanding and meeting the needs of its users, ensuring digital solutions that exceed expectations.')]),
//       p(classes: 'text-lg', [text('It prioritizes understanding and meeting the needs of its users, ensuring digital solutions that exceed expectations.')]),
//       p(classes: 'text-lg', [text('It prioritizes understanding and meeting the needs of its users, ensuring digital solutions that exceed expectations.')]),

//     ]);
//   }
// }