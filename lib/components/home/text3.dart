import 'package:jaspr/jaspr.dart';

class TitleText3 extends StatelessComponent {
  const TitleText3({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'bg-[#0080000] p-4 text-center', [
      div(classes: 'flex flex-wrap justify-center items-center gap-4', [



      div(classes: 'flex-1', [
          p(classes: 'text-lg mb-2', [text('Integrity, Innovation, Excellence: Our Commitment to You')]),
          // p(classes: 'text-lg mb-2', [text('Driven by values of innovation, reliability, user-centricity, and trust, the company adapts to technological advancements to build a more connected future.')]),
          // p(classes: 'text-lg', [text('Honesty, transparency, and ethical practices guide decision-making, while professional growth is supported through continuous learning and career advancement opportunities.')]),
        ]),

        
        button(
          classes: 'bg-purple-700 text-white rounded-lg shadow-lg font-space-grotesk transition-colors duration-200 hover:bg-black px-6 py-3',
          [
            text('Code of Conduct'),
          ]
        ),

  


      ]),
    ]);
  }
}


