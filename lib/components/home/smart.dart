import 'package:jaspr/jaspr.dart';

class SmartAppSuiteComponent extends StatelessComponent {
  const SmartAppSuiteComponent({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(tag: 'style', children: [
      text(
        '''
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap');
        body {
          font-family: 'Inter', sans-serif;
          background: linear-gradient(180deg, #E0E7FF 0%, #FFFFFF 100%);
        }
        '''
      ),
    ]);
    yield body(classes: 'flex flex-col items-center justify-center min-h-screen p-4', [
      div(classes: 'text-center max-w-4xl px-4', [
        h1(classes: 'text-3xl sm:text-4xl md:text-5xl font-bold text-purple-900 leading-tight', [
          text('Our smart app suite solves real-time challenges, fueling success and growth with Bainary Globe innovation.'),
        ]),
        div(classes: 'flex items-center justify-center mt-4', [
          span(classes: 'text-xl sm:text-2xl text-purple-900 mr-4', [text('•')]),
          a(href: '#', classes: 'text-base sm:text-lg font-medium text-black flex items-center', [
            text('Know More '),
            i(classes: 'fas fa-arrow-right ml-2', []),
          ]),
        ]),
      ]),
      div(classes: 'mt-16 p-4 sm:p-8 border-4 border-purple-500 rounded-lg max-w-4xl', [
        h2(classes: 'text-2xl sm:text-3xl md:text-4xl font-bold text-purple-900 leading-tight', [
          text('Bainary Globe fosters innovation, teamwork, ethics, and growth.'),
        ]),
        div(classes: 'flex items-center justify-center mt-8', [
          button(classes: 'bg-white text-black text-base sm:text-lg font-medium py-2 px-4 rounded-full shadow-md flex items-center', [
            text('Scroll '),
            i(classes: 'fas fa-arrow-down ml-2', []),
          ]),
        ]),
      ]),
    ]);
  }
}