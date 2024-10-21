import 'package:jaspr/jaspr.dart';

class OurMissionComponent extends StatelessComponent {
  const OurMissionComponent({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(tag: 'style', children: [
      text(
        '''
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');
        body {
          font-family: 'Roboto', sans-serif;
        }
        '''
      ),
    ]);
    yield body(classes: 'bg-white text-gray-900', [
      div(classes: 'max-w-4xl mx-auto p-6', [
        div(classes: 'text-center', [
          h1(classes: 'text-5xl font-bold text-purple-600', [
            text('Our Mission'),
          ]),
          p(classes: 'mt-4 text-lg text-gray-700', [
            text("Bainary Globe's mission is to harness technology to solve real-time problems with innovative, intuitive applications that enhance productivity and user experience across industries."),
          ]),
          // a(href: '#', classes: 'mt-4 inline-block text-gray-700 hover:text-purple-600', [
          //   text('Learn More '),
          //   i(classes: 'fas fa-arrow-right', []),
          // ]),
        ]),
        div(classes: 'mt-4 bg-gray-900 text-white p-8 rounded-lg', [
          div(classes: 'grid grid-cols-1 md:grid-cols-3 gap-8', [
            div([
              p([
                text("Binary Globe's mission is to leverage technology to solve real-time problems with innovative, intuitive applications that boost productivity and enrich user experiences. Its vision is to lead globally in developing transformative tech solutions that drive positive change and create societal value."),
              ]),
              a(href: '#', classes: 'mt-4 inline-block text-purple-400 hover:text-purple-600', [
                text('Mission '),
                i(classes: 'fas fa-arrow-right', []),
              ]),
            ]),
            div([
              p([
                text("Binary Globe's voice is clear, confident, and forward-thinking, emphasizing clarity, simplicity, and innovation. It maintains a user-centric yet professional tone that reflects the company's expertise and commitment to its audience."),
              ]),
              a(href: '#', classes: 'mt-4 inline-block text-purple-400 hover:text-purple-600', [
                text('Brand Voice '),
                i(classes: 'fas fa-arrow-right', []),
              ]),
            ]),
            div([
              p([
                text("Binary Globe is committed to driving industry advancement with innovative solutions that prioritize reliability, user-centricity, and trust. By fostering collaboration, excellence, sustainability, and community engagement, it aims to create meaningful impacts and continuous improvement in technology."),
              ]),
              a(href: '#', classes: 'mt-4 inline-block text-purple-400 hover:text-purple-600', [
                text('Brand Value '),
                i(classes: 'fas fa-arrow-right', []),
              ]),
            ]),
          ]),
        ]),
        div(classes: 'mt-4 text-center', [
          h2(classes: 'text-4xl font-bold text-purple-600', [
            text('What they say about us'),
          ]),
        ]),
      ]),
    ]);
  }
}